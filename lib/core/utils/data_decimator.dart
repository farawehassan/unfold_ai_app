import 'dart:math';

import 'package:unfold_ai_app/domain/entities/biometric_data.dart';

/// An enum that represents the chart metric.
enum ChartMetric {
  /// The HRV metric.
  hrv,

  /// The RHR metric.
  rhr,

  /// The steps metric.
  steps,

  /// The sleep score metric.
  sleepScore,
}

/// A class that represents the data decimator.
class DataDecimator {
  /// Calculate the rolling mean.
  static List<ChartDataPoint> calculateRollingMean(
    List<BiometricData> data,
    ChartMetric metric,
    int windowSize,
  ) {
    if (data.length < windowSize) return [];

    final rollingMean = <ChartDataPoint>[];

    for (var i = windowSize - 1; i < data.length; i++) {
      final window = data.sublist(i - windowSize + 1, i + 1);
      final mean = window
              .map((item) => _getMetricValue(item, metric))
              .reduce((a, b) => a + b) /
          windowSize;

      rollingMean.add(
        ChartDataPoint(
          date: DateTime.parse(data[i].date),
          value: mean,
        ),
      );
    }

    return rollingMean;
  }

  /// Calculate the standard deviation.
  static List<ChartDataPoint> calculateStandardDeviation(
    List<BiometricData> data,
    ChartMetric metric,
    int windowSize,
  ) {
    if (data.length < windowSize) return [];

    final stdDev = <ChartDataPoint>[];

    for (var i = windowSize - 1; i < data.length; i++) {
      final window = data.sublist(i - windowSize + 1, i + 1);
      final values =
          window.map((item) => _getMetricValue(item, metric)).toList();
      final mean = values.reduce((a, b) => a + b) / values.length;

      final variance =
          values.map((v) => (v - mean) * (v - mean)).reduce((a, b) => a + b) /
              values.length;
      final standardDeviation = sqrt(variance);

      stdDev.add(
        ChartDataPoint(
          date: DateTime.parse(data[i].date),
          value: standardDeviation,
        ),
      );
    }

    return stdDev;
  }

  /// Decimate the data with performance-optimized strategies.
  static List<ChartDataPoint> decimateData(
    List<BiometricData> data,
    int targetSize,
    ChartMetric metric,
  ) {
    if (data.length <= targetSize) {
      return data
          .map(
            (item) => ChartDataPoint(
              date: DateTime.parse(item.date),
              value: _getMetricValue(item, metric),
            ),
          )
          .toList();
    }

    // For extremely large datasets (>10k points), use bucket mean for speed
    if (data.length > 10000) {
      return _bucketMeanDecimation(data, targetSize, metric);
    }

    // For very large datasets, use aggressive decimation
    if (data.length > targetSize * 10) {
      return _aggressiveDecimation(data, targetSize, metric);
    }

    // Use Largest Triangle Three Buckets (LTTB) algorithm for smaller datasets
    return _lttbDecimation(data, targetSize, metric);
  }

  /// Aggressive decimation.
  static List<ChartDataPoint> _aggressiveDecimation(
    List<BiometricData> data,
    int targetSize,
    ChartMetric metric,
  ) {
    final decimated = <ChartDataPoint>[];
    final step = data.length / targetSize;

    for (var i = 0; i < targetSize; i++) {
      final index = (i * step).round();
      if (index < data.length) {
        decimated.add(
          ChartDataPoint(
            date: DateTime.parse(data[index].date),
            value: _getMetricValue(data[index], metric),
          ),
        );
      }
    }

    return decimated;
  }

  /// Bucket mean decimation for very large datasets (>10k points).
  /// Fastest method - averages values within time buckets.
  static List<ChartDataPoint> _bucketMeanDecimation(
    List<BiometricData> data,
    int targetSize,
    ChartMetric metric,
  ) {
    final decimated = <ChartDataPoint>[];
    final bucketSize = data.length / targetSize;

    for (var i = 0; i < targetSize; i++) {
      final bucketStart = (i * bucketSize).floor();
      final bucketEnd = ((i + 1) * bucketSize).floor().clamp(0, data.length);

      if (bucketStart >= data.length) break;

      // Calculate mean value for this bucket
      double sum = 0;
      var count = 0;
      var bucketDate = DateTime.parse(data[bucketStart].date);

      for (var j = bucketStart; j < bucketEnd; j++) {
        sum += _getMetricValue(data[j], metric);
        count++;
        // Use middle date of bucket
        if (j == bucketStart + (bucketEnd - bucketStart) ~/ 2) {
          bucketDate = DateTime.parse(data[j].date);
        }
      }

      if (count > 0) {
        decimated.add(
          ChartDataPoint(
            date: bucketDate,
            value: sum / count,
          ),
        );
      }
    }

    return decimated;
  }

  /// Calculate the triangle area.
  static double _calculateTriangleArea(
    ChartDataPoint a,
    ChartDataPoint b,
    ChartDataPoint c,
  ) {
    return ((a.date.millisecondsSinceEpoch * (b.value - c.value)) +
                (b.date.millisecondsSinceEpoch * (c.value - a.value)) +
                (c.date.millisecondsSinceEpoch * (a.value - b.value)))
            .abs() /
        2;
  }

  /// Get the metric value.
  static double _getMetricValue(BiometricData data, ChartMetric metric) {
    switch (metric) {
      case ChartMetric.hrv:
        return data.hrv;
      case ChartMetric.rhr:
        return data.rhr.toDouble();
      case ChartMetric.steps:
        return data.steps.toDouble();
      case ChartMetric.sleepScore:
        return data.sleepScore.toDouble();
    }
  }

  /// LTTB decimation.
  static List<ChartDataPoint> _lttbDecimation(
    List<BiometricData> data,
    int targetSize,
    ChartMetric metric,
  ) {
    if (targetSize >= data.length) {
      return data
          .map(
            (item) => ChartDataPoint(
              date: DateTime.parse(item.date),
              value: _getMetricValue(item, metric),
            ),
          )
          .toList();
    }

    if (targetSize < 3) {
      return data
          .take(targetSize)
          .map(
            (item) => ChartDataPoint(
              date: DateTime.parse(item.date),
              value: _getMetricValue(item, metric),
            ),
          )
          .toList();
    }

    final decimated = <ChartDataPoint>[];
    final bucketSize = (data.length - 2) ~/ (targetSize - 2);

    // Always include the first point
    decimated.add(
      ChartDataPoint(
        date: DateTime.parse(data.first.date),
        value: _getMetricValue(data.first, metric),
      ),
    );

    // Process buckets
    for (var i = 1; i < targetSize - 1; i++) {
      final bucketStart = i * bucketSize;
      final bucketEnd = bucketStart + bucketSize;

      // Find the point with the largest triangle area
      double maxArea = 0;
      var maxIndex = bucketStart;

      for (var j = bucketStart; j < bucketEnd && j < data.length; j++) {
        final area = _calculateTriangleArea(
          decimated.last,
          ChartDataPoint(
            date: DateTime.parse(data[j].date),
            value: _getMetricValue(data[j], metric),
          ),
          ChartDataPoint(
            date: DateTime.parse(
              data[bucketEnd < data.length ? bucketEnd : data.length - 1].date,
            ),
            value: _getMetricValue(
              data[bucketEnd < data.length ? bucketEnd : data.length - 1],
              metric,
            ),
          ),
        );

        if (area > maxArea) {
          maxArea = area;
          maxIndex = j;
        }
      }

      decimated.add(
        ChartDataPoint(
          date: DateTime.parse(data[maxIndex].date),
          value: _getMetricValue(data[maxIndex], metric),
        ),
      );
    }

    // Always include the last point
    decimated.add(
      ChartDataPoint(
        date: DateTime.parse(data.last.date),
        value: _getMetricValue(data.last, metric),
      ),
    );

    return decimated;
  }
}
