import 'package:flutter/material.dart';
import 'package:unfold_ai_app/core/theme/theme_cubit.dart';
import 'package:unfold_ai_app/core/utils/data_decimator.dart';
import 'package:unfold_ai_app/domain/entities/biometric_data.dart';
import 'package:unfold_ai_app/presentation/widgets/biometric_chart.dart';

/// A widget that displays a chart section.
class ChartSectionWidget extends StatelessWidget {
  /// Constructor for the ChartSectionWidget.
  const ChartSectionWidget({
    required this.title,
    required this.metric,
    required this.biometricData,
    required this.journalEntries,
    required this.selectedRange,
    required this.showLargeDataset,
    required this.onTooltipChanged,
    super.key,
  });

  /// The title of the chart section.
  final String title;

  /// The metric to display.
  final ChartMetric metric;

  /// The biometric data to display.
  final List<BiometricData> biometricData;

  /// The journal entries to display.
  final List<JournalEntry> journalEntries;

  /// The selected range to display.
  final ChartRange selectedRange;

  /// Whether to show the large dataset.
  final bool showLargeDataset;

  /// The callback to change the tooltip.
  final void Function(BiometricData? biometricData, JournalEntry? journalEntry)?
      onTooltipChanged;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 16),
            BiometricChart(
              data: biometricData,
              journalEntries: journalEntries,
              metric: metric,
              range: selectedRange,
              isDarkMode: ThemeCubit().isDarkMode,
              showLargeDataset: showLargeDataset,
              onTooltipChanged: onTooltipChanged,
            ),
          ],
        ),
      ),
    );
  }
}
