import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:unfold_ai_app/presentation/bloc/dashboard_bloc.dart';
import 'package:unfold_ai_app/presentation/widgets/custom_error_widget.dart';
import 'package:unfold_ai_app/presentation/widgets/custom_loading_widget.dart';
import 'package:unfold_ai_app/presentation/widgets/loaded_content_widget.dart';
import 'package:unfold_ai_app/presentation/widgets/range_selector.dart';
import 'package:unfold_ai_app/presentation/widgets/theme_toggle_widget.dart';

/// Dashboard Page to display the dashboard.
class DashboardPage extends StatelessWidget {
  /// Constructor for the Dashboard Page.
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Biometrics Dashboard'),
        actions: const [
          ThemeToggleWidget(),
        ],
      ),
      body: Column(
        children: [
          BlocBuilder<DashboardBloc, DashboardState>(
            builder: (context, state) {
              return state.maybeMap(
                loaded: (value) => RangeSelector(
                  selectedRange: value.selectedRange,
                  onRangeChanged: (range) {
                    context.read<DashboardBloc>().add(
                          DashboardEvent.changeRange(range: range),
                        );
                  },
                ),
                orElse: () => RangeSelector(
                  selectedRange: state.selectedRange,
                  onRangeChanged: (range) {
                    context.read<DashboardBloc>().add(
                          DashboardEvent.changeRange(range: range),
                        );
                  },
                ),
              );
            },
          ),
          const SizedBox(height: 16),
          Expanded(
            child: BlocBuilder<DashboardBloc, DashboardState>(
              builder: (context, state) {
                return state.maybeMap(
                  loading: (value) => const CustomLoadingWidget(),
                  loaded: (value) {
                    return LoadedContentWidget(
                      biometricData: value.biometricData,
                      journalEntries: value.journalEntries,
                      selectedRange: value.selectedRange,
                      showLargeDataset: value.showLargeDataset,
                    );
                  },
                  error: (value) => CustomErrorWidget(
                    message: value.message,
                    onRetry: () => context
                        .read<DashboardBloc>()
                        .add(const DashboardEvent.retry()),
                  ),
                  orElse: () => const SizedBox.shrink(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
