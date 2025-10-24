part of 'dashboard_bloc.dart';

/// Events that can be dispatched to the [DashboardBloc].
@freezed
class DashboardEvent with _$DashboardEvent {
  /// Event to change the chart range.
  const factory DashboardEvent.changeRange({
    required ChartRange range,
  }) = _ChangeRange;

  /// Event to load data for the specified range.
  const factory DashboardEvent.loadData({
    required ChartRange range,
  }) = _LoadData;

  /// Event to retry loading data after a failure.
  const factory DashboardEvent.retry() = _Retry;

  /// Event to toggle between normal and large dataset.
  const factory DashboardEvent.toggleLargeDataset() = _ToggleLargeDataset;
}
