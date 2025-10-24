import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:unfold_ai_app/core/utils/data_decimator.dart';
import 'package:unfold_ai_app/domain/entities/biometric_data.dart';
import 'package:unfold_ai_app/presentation/bloc/dashboard_bloc.dart';
import 'package:unfold_ai_app/presentation/widgets/chart_section_widget.dart';
import 'package:unfold_ai_app/presentation/widgets/custom_empty_widget.dart';

/// Custom Loaded Content Widget to display when data is loaded.
class LoadedContentWidget extends HookWidget {
  /// Constructor for the Custom Loaded Content
  const LoadedContentWidget({
    /// The biometric data to display.
    required this.biometricData,

    /// The journal entries to display.
    required this.journalEntries,

    /// The selected range to display.
    required this.selectedRange,

    /// The large dataset to display.
    required this.showLargeDataset,
    super.key,
  });

  /// The biometric data to display.
  final List<BiometricData> biometricData;

  /// The journal entries to display.
  final List<JournalEntry> journalEntries;

  /// The selected range to display.
  final ChartRange selectedRange;

  /// The large dataset to display.
  final bool showLargeDataset;

  @override
  Widget build(BuildContext context) {
    final scrollController = useScrollController();
    final selectedDate = useState<DateTime?>(null);
    if (biometricData.isEmpty) {
      return const CustomEmptyWidget();
    }

    return Column(
      children: [
        // Range selector and controls
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Dataset: ${biometricData.length} points',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Row(
                    children: [
                      const Text('Large Dataset'),
                      Switch(
                        value: showLargeDataset,
                        onChanged: (value) {
                          context.read<DashboardBloc>().add(
                                const DashboardEvent.toggleLargeDataset(),
                              );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),

        // Charts
        Expanded(
          child: SingleChildScrollView(
            controller: scrollController,
            child: Column(
              children: [
                ChartSectionWidget(
                  title: 'Heart Rate Variability (HRV)',
                  metric: ChartMetric.hrv,
                  biometricData: biometricData,
                  journalEntries: journalEntries,
                  selectedRange: selectedRange,
                  showLargeDataset: showLargeDataset,
                  onTooltipChanged: (date) => selectedDate.value = date,
                  selectedDate: selectedDate.value,
                ),
                ChartSectionWidget(
                  title: 'Resting Heart Rate (RHR)',
                  metric: ChartMetric.rhr,
                  biometricData: biometricData,
                  journalEntries: journalEntries,
                  selectedRange: selectedRange,
                  showLargeDataset: showLargeDataset,
                  onTooltipChanged: (date) => selectedDate.value = date,
                  selectedDate: selectedDate.value,
                ),
                ChartSectionWidget(
                  title: 'Steps',
                  metric: ChartMetric.steps,
                  biometricData: biometricData,
                  journalEntries: journalEntries,
                  selectedRange: selectedRange,
                  showLargeDataset: showLargeDataset,
                  onTooltipChanged: (date) => selectedDate.value = date,
                  selectedDate: selectedDate.value,
                ),
                ChartSectionWidget(
                  title: 'Sleep Score',
                  metric: ChartMetric.sleepScore,
                  biometricData: biometricData,
                  journalEntries: journalEntries,
                  selectedRange: selectedRange,
                  showLargeDataset: showLargeDataset,
                  onTooltipChanged: (date) => selectedDate.value = date,
                  selectedDate: selectedDate.value,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
