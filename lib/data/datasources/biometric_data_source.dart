import 'dart:convert';
import 'dart:math';

import 'package:flutter/services.dart';
import 'package:unfold_ai_app/data/models/biometric_data_model.dart';
import 'package:unfold_ai_app/domain/entities/biometric_data.dart';

/// Abstract interface for biometric data sources.
///
/// Defines the contract for retrieving biometric data from various sources
/// such as local storage, network APIs, or mock data.
// ignore: one_member_abstracts
abstract class BiometricDataSource {
  /// Retrieves biometric data for the specified date range.
  ///
  /// [range] - The date range for which to retrieve data
  /// [useLargeDataset] - Whether to use a large dataset for performance testing
  ///
  /// Returns a list of [BiometricDataModel] objects.
  Future<List<BiometricDataModel>> getBiometricData({
    required ChartRange range,
    required bool useLargeDataset,
  });
}

/// Implementation of [BiometricDataSource] that loads data from local assets.
///
/// This implementation simulates network latency and failures for testing
/// purposes.
class BiometricDataSourceImpl implements BiometricDataSource {
  /// Random number generator for simulating network behavior.
  final Random _random = Random();

  @override
  Future<List<BiometricDataModel>> getBiometricData({
    required ChartRange range,
    required bool useLargeDataset,
  }) async {
    try {
      // Simulate network latency (700-1200ms)
      final latency = 700 + _random.nextInt(500);
      await Future<void>.delayed(Duration(milliseconds: latency));

      // Simulate ~10% random failures
      if (_random.nextDouble() < 0.1) {
        throw Exception('Simulated network failure');
      }

      // Load data from assets
      final jsonString =
          await rootBundle.loadString('assets/data/biometrics_90d.json');
      final jsonList = json.decode(jsonString) as List<dynamic>;

      var data = jsonList
          .map(
            (json) => BiometricDataModel.fromJson(json as Map<String, dynamic>),
          )
          .toList();

      // Filter by date range
      data = data.where((item) {
        final itemDate = DateTime.parse(item.date);
        final rangeStart = range.start.subtract(const Duration(days: 1));
        final rangeEnd = range.end.add(const Duration(days: 1));
        final matches =
            itemDate.isAfter(rangeStart) && itemDate.isBefore(rangeEnd);
        return matches;
      }).toList();

      // Generate large dataset if requested
      if (useLargeDataset) {
        data = _generateLargeDataset(data);
      }

      return data;
    } catch (e) {
      throw Exception('Failed to load biometric data: $e');
    }
  }

  /// Generates a large dataset by interpolating and varying the original data.
  ///
  /// This method creates approximately 15,000 data points with realistic
  /// time interpolation and variation for performance testing.
  List<BiometricDataModel> _generateLargeDataset(
    List<BiometricDataModel> originalData,
  ) {
    final largeDataset = <BiometricDataModel>[];
    final random = Random();

    // Generate 15k+ points with realistic time interpolation
    const targetPoints = 15000;
    final timeSpan = originalData.isNotEmpty
        ? DateTime.parse(originalData.last.date)
            .difference(DateTime.parse(originalData.first.date))
        : const Duration(days: 90);

    for (var i = 0; i < targetPoints; i++) {
      // Create realistic time progression
      final progress = i / (targetPoints - 1);
      final baseTime = DateTime.parse(originalData.first.date);
      final interpolatedTime = baseTime.add(
        Duration(
          milliseconds: (timeSpan.inMilliseconds * progress).round(),
        ),
      );

      // Find the closest original data point for interpolation
      final baseIndex = (progress * (originalData.length - 1))
          .round()
          .clamp(0, originalData.length - 1);
      final baseData = originalData[baseIndex];

      // Add realistic variation based on metric type
      final variation = (random.nextDouble() - 0.5) * 0.15; // ±7.5% variation
      final timeVariation =
          (random.nextDouble() - 0.5) * 0.1; // ±5% time-based variation

      largeDataset.add(
        BiometricDataModel(
          date: interpolatedTime
              .toIso8601String()
              .split('T')[0], // YYYY-MM-DD format
          hrv: (baseData.hrv * (1 + variation + timeVariation))
              .clamp(35.0, 85.0),
          rhr: (baseData.rhr + random.nextInt(12) - 6).clamp(45, 85),
          steps: (baseData.steps * (1 + variation)).round().clamp(500, 20000),
          sleepScore:
              (baseData.sleepScore + random.nextInt(25) - 12).clamp(40, 100),
        ),
      );
    }

    return largeDataset;
  }
}

/// Abstract interface for journal data sources.
///
/// Defines the contract for retrieving journal entries from various sources.
// ignore: one_member_abstracts
abstract class JournalDataSource {
  /// Retrieves journal entries for the specified date range.
  ///
  /// [range] - The date range for which to retrieve journal entries
  ///
  /// Returns a list of [JournalEntryModel] objects.
  Future<List<JournalEntryModel>> getJournalEntries({
    required ChartRange range,
  });
}

/// Implementation of [JournalDataSource] that loads data from local assets.
///
/// This implementation simulates network latency and failures for testing
/// purposes.
class JournalDataSourceImpl implements JournalDataSource {
  /// Random number generator for simulating network behavior.
  final Random _random = Random();

  @override
  Future<List<JournalEntryModel>> getJournalEntries({
    required ChartRange range,
  }) async {
    try {
      // Simulate network latency (700-1200ms)
      final latency = 700 + _random.nextInt(500);
      await Future<void>.delayed(Duration(milliseconds: latency));

      // Simulate ~10% random failures
      if (_random.nextDouble() < 0.1) {
        throw Exception('Simulated network failure');
      }

      // Load data from assets
      final jsonString =
          await rootBundle.loadString('assets/data/journals.json');
      final jsonList = json.decode(jsonString) as List<dynamic>;

      final data = jsonList
          .map(
            (json) => JournalEntryModel.fromJson(json as Map<String, dynamic>),
          )
          .toList();
      // Filter by date range
      return data.where((item) {
        final itemDate = DateTime.parse(item.date);
        final rangeStart = range.start.subtract(const Duration(days: 1));
        final rangeEnd = range.end.add(const Duration(days: 1));
        final matches =
            itemDate.isAfter(rangeStart) && itemDate.isBefore(rangeEnd);
        return matches;
      }).toList();
    } catch (e) {
      throw Exception('Failed to load journal entries: $e');
    }
  }
}
