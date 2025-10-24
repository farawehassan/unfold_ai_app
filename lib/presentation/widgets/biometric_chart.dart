import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:intl/intl.dart';
import 'package:unfold_ai_app/core/utils/data_decimator.dart';
import 'package:unfold_ai_app/domain/entities/biometric_data.dart';

/// A chart that displays biometric data.
class BiometricChart extends StatefulWidget {
  /// Constructor for the BiometricChart.
  const BiometricChart({
    /// The data to display.
    required this.data,
    required this.journalEntries,
    required this.metric,
    required this.range,
    required this.isDarkMode,
    required this.showLargeDataset,
    super.key,
    this.onTooltipChanged,
    this.selectedDate,
  });

  /// The data to display.
  final List<BiometricData> data;

  /// The journal entries to display.
  final List<JournalEntry> journalEntries;

  /// The metric to display.
  final ChartMetric metric;

  /// The range to display.
  final ChartRange range;

  /// Whether the chart is in dark mode.
  final bool isDarkMode;

  /// Whether to show the large dataset.
  final bool showLargeDataset;

  /// The callback to change the tooltip.
  final ValueChanged<DateTime?>? onTooltipChanged;

  /// The selected date.
  final DateTime? selectedDate;

  @override
  State<BiometricChart> createState() => _BiometricChartState();
}

class _BiometricChartState extends State<BiometricChart> {
  /// The decimated data.
  late List<ChartDataPoint> _decimatedData;

  /// The rolling mean data.
  late List<ChartDataPoint> _rollingMean;

  /// The standard deviation data.
  late List<ChartDataPoint> _stdDev;

  /// The screen width.
  double? _screenWidth;

  /// The minimum x value.
  double _minX = 0;

  /// The maximum x value.
  double _maxX = 0;

  /// The minimum y value.
  double _minY = 0;

  /// The maximum y value.
  double _maxY = 0;

  @override
  Widget build(BuildContext context) {
    if (_decimatedData.isEmpty) {
      return _buildEmptyChart();
    }

    return SizedBox(
      height: 220,
      child: LineChart(
        LineChartData(
          gridData: FlGridData(
            drawVerticalLine: false,
            horizontalInterval: _getHorizontalInterval(),
            getDrawingHorizontalLine: (value) => FlLine(
              color: widget.isDarkMode ? Colors.grey[800]! : Colors.grey[300]!,
              strokeWidth: 1,
            ),
          ),
          titlesData: FlTitlesData(
            rightTitles: const AxisTitles(),
            topTitles: const AxisTitles(),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 40,
                interval: _getBottomInterval(),
                getTitlesWidget: (value, meta) => _buildBottomTitle(value),
              ),
            ),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 50,
                interval: _getLeftInterval(),
                getTitlesWidget: (value, meta) => _buildLeftTitle(value),
              ),
            ),
          ),
          borderData: FlBorderData(show: false),
          minX: _minX,
          maxX: _maxX,
          minY: _minY,
          maxY: _maxY,
          lineBarsData: _buildLineBarsData(),
          lineTouchData: LineTouchData(
            touchTooltipData: LineTouchTooltipData(
              getTooltipItems: (touchedSpots) {
                return touchedSpots.map((spot) {
                  final date =
                      DateTime.fromMillisecondsSinceEpoch(spot.x.toInt());

                  // Check if this is a journal entry marker
                  final journalEntry = _getJournalEntryForDate(date);
                  if (journalEntry != null) {
                    return LineTooltipItem(
                      '${_formatDate(date)}\n'
                      'Mood: ${journalEntry.mood}/5\n'
                      '${journalEntry.note}',
                      TextStyle(
                        color: widget.isDarkMode ? Colors.white : Colors.black,
                        fontSize: 12,
                      ),
                    );
                  }

                  // Regular biometric data tooltip
                  // Defer the callback to avoid setState during paint
                  if (widget.onTooltipChanged != null) {
                    SchedulerBinding.instance.addPostFrameCallback((_) {
                      widget.onTooltipChanged!(date);
                    });
                  }

                  return LineTooltipItem(
                    '${_formatDate(date)}\n${_formatValue(spot.y)}',
                    TextStyle(
                      color: widget.isDarkMode ? Colors.white : Colors.black,
                      fontSize: 12,
                    ),
                  );
                }).toList();
              },
            ),
            getTouchedSpotIndicator: (barData, spotIndexes) {
              return spotIndexes.map((index) {
                return TouchedSpotIndicatorData(
                  FlLine(
                    color: _getChartColor(),
                  ),
                  FlDotData(
                    getDotPainter: (spot, percent, barData, index) {
                      return FlDotCirclePainter(
                        radius: 4,
                        color: _getChartColor(),
                        strokeWidth: 2,
                        strokeColor:
                            widget.isDarkMode ? Colors.black : Colors.white,
                      );
                    },
                  ),
                );
              }).toList();
            },
          ),
        ),
      ),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final newScreenWidth = MediaQuery.of(context).size.width;

    // Only update if screen width has actually changed
    if (_screenWidth == null || _screenWidth != newScreenWidth) {
      _screenWidth = newScreenWidth;
      // Update data with the new screen width
      if (mounted) {
        _updateData();
      }
    }
  }

  @override
  void didUpdateWidget(BiometricChart oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.data != widget.data ||
        oldWidget.showLargeDataset != widget.showLargeDataset ||
        oldWidget.metric != widget.metric ||
        oldWidget.range != widget.range) {
      if (mounted) {
        _updateData();
      }
    }
  }

  @override
  void initState() {
    super.initState();
    _initializeData();
  }

  /// Add HRV bands (7-day rolling mean ±1σ)
  void _addHrvBands(List<LineChartBarData> bars) {
    if (widget.metric == ChartMetric.hrv && _rollingMean.isNotEmpty) {
      // Rolling mean line
      bars.add(
        LineChartBarData(
          spots: _rollingMean
              .map(
                (point) => FlSpot(
                  point.date.millisecondsSinceEpoch.toDouble(),
                  point.value,
                ),
              )
              .toList(),
          isCurved: !widget.showLargeDataset,
          color: _getChartColor().withValues(alpha: 0.7),
          barWidth: widget.showLargeDataset ? 0.8 : 1.0,
          isStrokeCapRound: true,
          dotData: const FlDotData(show: false),
          dashArray: widget.showLargeDataset ? [3, 3] : [5, 5],
        ),
      );

      // Upper band (mean + 1σ)
      if (_stdDev.isNotEmpty) {
        bars
          ..add(
            LineChartBarData(
              spots: _rollingMean.asMap().entries.map((entry) {
                final index = entry.key;
                final meanPoint = entry.value;
                final stdPoint =
                    index < _stdDev.length ? _stdDev[index] : _stdDev.last;
                return FlSpot(
                  meanPoint.date.millisecondsSinceEpoch.toDouble(),
                  meanPoint.value + stdPoint.value,
                );
              }).toList(),
              isCurved: !widget.showLargeDataset,
              color: _getChartColor()
                  .withValues(alpha: widget.showLargeDataset ? 0.2 : 0.3),
              barWidth: widget.showLargeDataset ? 0.5 : 1.0,
              isStrokeCapRound: true,
              dotData: const FlDotData(show: false),
            ),
          )

          // Lower band (mean - 1σ)
          ..add(
            LineChartBarData(
              spots: _rollingMean.asMap().entries.map((entry) {
                final index = entry.key;
                final meanPoint = entry.value;
                final stdPoint =
                    index < _stdDev.length ? _stdDev[index] : _stdDev.last;
                return FlSpot(
                  meanPoint.date.millisecondsSinceEpoch.toDouble(),
                  meanPoint.value - stdPoint.value,
                );
              }).toList(),
              isCurved: !widget.showLargeDataset,
              color: _getChartColor()
                  .withValues(alpha: widget.showLargeDataset ? 0.2 : 0.3),
              barWidth: widget.showLargeDataset ? 0.5 : 1.0,
              isStrokeCapRound: true,
              dotData: const FlDotData(show: false),
            ),
          );
      }
    }
  }

  /// Add journal entry annotations as vertical lines
  void _addJournalAnnotations(List<LineChartBarData> bars) {
    for (final entry in widget.journalEntries) {
      final entryDate = DateTime.parse(entry.date);
      final xValue = entryDate.millisecondsSinceEpoch.toDouble();

      // Only add if the entry is within the current data range
      if (xValue >= _minX && xValue <= _maxX) {
        // Add vertical line with interactive dot at the top
        bars.add(
          LineChartBarData(
            spots: [
              FlSpot(xValue, _minY),
              FlSpot(xValue, _maxY),
            ],
            color: _getMoodColor(entry.mood).withValues(alpha: 0.8),
            barWidth: 3,
            dotData: FlDotData(
              getDotPainter: (spot, percent, barData, index) {
                // Only show dot at the top (maxY)
                if (spot.y == _maxY) {
                  return FlDotCirclePainter(
                    radius: 6,
                    color: _getMoodColor(entry.mood),
                    strokeWidth: 2,
                    strokeColor:
                        widget.isDarkMode ? Colors.black : Colors.white,
                  );
                }
                return FlDotCirclePainter(
                  radius: 0,
                  color: Colors.transparent,
                );
              },
            ),
            belowBarData: BarAreaData(),
          ),
        );
      }
    }
  }

  /// Build the bottom title for the chart.
  ///
  /// [value] - The value to format.
  ///
  /// Returns a [SideTitleWidget] with the formatted date.
  Widget _buildBottomTitle(double value) {
    final date = DateTime.fromMillisecondsSinceEpoch(value.toInt());
    return SideTitleWidget(
      axisSide: AxisSide.bottom,
      child: Text(
        _formatDate(date),
        style: TextStyle(
          color: widget.isDarkMode ? Colors.grey[400] : Colors.grey[600],
          fontSize: 9,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  /// Build the empty chart.
  Widget _buildEmptyChart() {
    return Container(
      height: 200,
      padding: const EdgeInsets.all(16),
      child: Center(
        child: Text(
          'No data available',
          style: TextStyle(
            color: widget.isDarkMode ? Colors.grey[400] : Colors.grey[600],
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  /// Build the left title for the chart.
  Widget _buildLeftTitle(double value) {
    return SideTitleWidget(
      axisSide: AxisSide.left,
      child: Text(
        _formatValue(value),
        style: TextStyle(
          color: widget.isDarkMode ? Colors.grey[400] : Colors.grey[600],
          fontSize: 9,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  /// Build the line bars data for the chart.
  List<LineChartBarData> _buildLineBarsData() {
    // Adjust line properties based on dataset size
    final lineWidth = widget.showLargeDataset ? 1.5 : 2.0;
    final areaAlpha = widget.showLargeDataset ? 0.05 : 0.1;

    final bars = <LineChartBarData>[
      LineChartBarData(
        spots: _decimatedData
            .map(
              (point) => FlSpot(
                point.date.millisecondsSinceEpoch.toDouble(),
                point.value,
              ),
            )
            .toList(),
        isCurved:
            !widget.showLargeDataset, // Use straight lines for large datasets
        color: _getChartColor(),
        barWidth: lineWidth,
        isStrokeCapRound: true,
        dotData: const FlDotData(show: false),
        belowBarData: BarAreaData(
          show: true,
          color: _getChartColor().withValues(alpha: areaAlpha),
        ),
      ),
    ];

    // Add journal entry annotations as vertical lines
    _addJournalAnnotations(bars);

    // Add HRV bands (7-day rolling mean ±1σ)
    _addHrvBands(bars);

    return bars;
  }

  /// Calculate the target size for the chart.
  int _calculateTargetSize() {
    // Use stored screen width or fallback to a default
    final screenWidth = _screenWidth ?? 400.0;
    final baseSize = (screenWidth / 3).round(); // 3 pixels per point

    // Performance-optimized target sizes for smooth rendering (<16ms per frame)
    int targetSize;
    switch (widget.range.days) {
      case 7:
        targetSize =
            baseSize.clamp(50, 200); // Small dataset, no downsampling needed
      case 30:
        targetSize = baseSize.clamp(150, 300); // Moderate downsampling for 30d
      case 90:
        targetSize =
            baseSize.clamp(200, 400); // Aggressive downsampling for 90d
      default:
        targetSize = baseSize.clamp(100, 300);
    }

    // When large dataset is enabled, use more data points but cap for
    // performance
    if (widget.showLargeDataset) {
      targetSize = (targetSize * 1.5)
          .clamp(targetSize, 800)
          .round(); // Cap at 800 for smooth rendering
    }

    return targetSize;
  }

  /// Format the date for the chart.
  String _formatDate(DateTime date) {
    return DateFormat('dd MMM').format(date);
  }

  /// Format the value for the chart.
  String _formatValue(double value) {
    switch (widget.metric) {
      case ChartMetric.hrv:
        return value.toStringAsFixed(1);
      case ChartMetric.rhr:
        return value.round().toString();
      case ChartMetric.steps:
        final kValue = value / 1000;
        // Round to nearest 0.5k to avoid overlapping labels
        final rounded = (kValue * 2).round() / 2;
        return '${rounded.toStringAsFixed(
          rounded == rounded.roundToDouble() ? 0 : 1,
        )}k';
      case ChartMetric.sleepScore:
        return value.round().toString();
    }
  }

  /// Get the bottom interval for the chart.
  double _getBottomInterval() {
    switch (widget.range.days) {
      case 7:
        return 1 * 24 * 60 * 60 * 1000; // 2 days to prevent overlapping
      case 30:
        return 5 * 24 * 60 * 60 * 1000; // 5 days to prevent overlapping
      case 90:
        return 14 * 24 * 60 * 60 * 1000; // 2 weeks
      default:
        return 5 * 24 * 60 * 60 * 1000; // 5 days default
    }
  }

  /// Get the chart color for the metric.
  Color _getChartColor() {
    switch (widget.metric) {
      case ChartMetric.hrv:
        return Colors.blue;
      case ChartMetric.rhr:
        return Colors.red;
      case ChartMetric.steps:
        return Colors.green;
      case ChartMetric.sleepScore:
        return Colors.purple;
    }
  }

  /// Get the horizontal interval for the chart.
  double _getHorizontalInterval() {
    switch (widget.metric) {
      case ChartMetric.hrv:
        return 5;
      case ChartMetric.rhr:
        return 5;
      case ChartMetric.steps:
        return 1000;
      case ChartMetric.sleepScore:
        return 10;
    }
  }

  /// Get journal entry for a specific date
  JournalEntry? _getJournalEntryForDate(DateTime date) {
    final dateString = DateFormat('yyyy-MM-dd').format(date);
    return widget.journalEntries
        .where(
          (entry) => entry.date == dateString,
        )
        .toList()
        .firstOrNull;
  }

  /// Get the left interval for the chart.
  double _getLeftInterval() {
    switch (widget.metric) {
      case ChartMetric.hrv:
        return 5;
      case ChartMetric.rhr:
        return 5;
      case ChartMetric.steps:
        return 1000;
      case ChartMetric.sleepScore:
        return 10;
    }
  }

  /// Get the maximum y value for the chart.
  double _getMaxY() {
    if (_decimatedData.isEmpty) return 100;

    final values = _decimatedData.map((point) => point.value).toList();
    final max = values.reduce((a, b) => a > b ? a : b);

    switch (widget.metric) {
      case ChartMetric.hrv:
        return (max * 1.1).clamp(40, 80);
      case ChartMetric.rhr:
        return (max * 1.1).clamp(50, 80);
      case ChartMetric.steps:
        return (max * 1.1).clamp(5000, 15000);
      case ChartMetric.sleepScore:
        return (max * 1.1).clamp(50, 100);
    }
  }

  /// Get the minimum y value for the chart.
  double _getMinY() {
    if (_decimatedData.isEmpty) return 0;

    final values = _decimatedData.map((point) => point.value).toList();
    final min = values.reduce((a, b) => a < b ? a : b);

    switch (widget.metric) {
      case ChartMetric.hrv:
        return (min * 0.9).clamp(40, 80);
      case ChartMetric.rhr:
        return (min * 0.9).clamp(50, 80);
      case ChartMetric.steps:
        return 0;
      case ChartMetric.sleepScore:
        return (min * 0.9).clamp(50, 100);
    }
  }

  /// Get color based on mood (1-5 scale)
  Color _getMoodColor(int mood) {
    switch (mood) {
      case 1:
        return Colors.red; // Very bad
      case 2:
        return Colors.orange; // Bad
      case 3:
        return Colors.yellow; // Neutral
      case 4:
        return Colors.lightGreen; // Good
      case 5:
        return Colors.green; // Very good
      default:
        return Colors.grey;
    }
  }

  /// Initialize the data with empty data first
  void _initializeData() {
    _decimatedData = [];
    _rollingMean = [];
    _stdDev = [];
  }

  /// Update the data with the new screen width and range
  void _updateData() {
    final targetSize = _calculateTargetSize();

    _decimatedData = DataDecimator.decimateData(
      widget.data,
      targetSize,
      widget.metric,
    );

    // Set min/max values for pan/zoom
    if (_decimatedData.isNotEmpty) {
      setState(() {
        _minX = _decimatedData.first.date.millisecondsSinceEpoch.toDouble();
        _maxX = _decimatedData.last.date.millisecondsSinceEpoch.toDouble();
        _minY = _getMinY();
        _maxY = _getMaxY();
      });
    }

    if (widget.metric == ChartMetric.hrv) {
      _rollingMean = DataDecimator.calculateRollingMean(
        widget.data,
        widget.metric,
        7,
      );
      _stdDev = DataDecimator.calculateStandardDeviation(
        widget.data,
        widget.metric,
        7,
      );
    } else {
      _rollingMean = [];
      _stdDev = [];
    }
  }
}
