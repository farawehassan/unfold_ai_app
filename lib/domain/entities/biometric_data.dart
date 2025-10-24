import 'package:freezed_annotation/freezed_annotation.dart';

part 'biometric_data.freezed.dart';
part 'biometric_data.g.dart';

@freezed

/// A class that represents the biometric data.
class BiometricData with _$BiometricData {
  /// Constructor for the BiometricData.
  const factory BiometricData({
    required String date,
    required double hrv,
    required int rhr,
    required int steps,
    required int sleepScore,
  }) = _BiometricData;

  /// Create a BiometricData from a JSON map.
  factory BiometricData.fromJson(Map<String, dynamic> json) =>
      _$BiometricDataFromJson(json);
}

@freezed

/// A class that represents the chart data point.
class ChartDataPoint with _$ChartDataPoint {
  /// Constructor for the ChartDataPoint.
  const factory ChartDataPoint({
    required DateTime date,
    required double value,
    String? annotation,
  }) = _ChartDataPoint;
}

@freezed

/// A class that represents the chart range.
class ChartRange with _$ChartRange {
  /// Constructor for the ChartRange.
  const factory ChartRange({
    required DateTime start,
    required DateTime end,
    required int days,
  }) = _ChartRange;

  /// Creates a chart range for the last ninety days.
  ///
  /// Returns a predefined range covering 90 days of data.
  // ignore: prefer_constructors_over_static_methods
  static ChartRange get ninetyDays => ChartRange(
        start: DateTime(2025, 7, 25),
        end: DateTime(2025, 10, 22),
        days: 90,
      );

  /// Creates a chart range for the last seven days.
  ///
  /// Returns a predefined range covering 7 days of data.
  // ignore: prefer_constructors_over_static_methods
  static ChartRange get sevenDays => ChartRange(
        start: DateTime(2025, 10, 15),
        end: DateTime(2025, 10, 21),
        days: 7,
      );

  /// Creates a chart range for the last thirty days.
  ///
  /// Returns a predefined range covering 30 days of data.
  // ignore: prefer_constructors_over_static_methods
  static ChartRange get thirtyDays => ChartRange(
        start: DateTime(2025, 09, 23),
        end: DateTime(2025, 10, 22),
        days: 30,
      );
}

@freezed

/// A class that represents the journal entry.
class JournalEntry with _$JournalEntry {
  /// Constructor for the JournalEntry.
  const factory JournalEntry({
    required String date,
    required int mood,
    required String note,
  }) = _JournalEntry;

  /// Create a JournalEntry from a JSON map.
  factory JournalEntry.fromJson(Map<String, dynamic> json) =>
      _$JournalEntryFromJson(json);
}
