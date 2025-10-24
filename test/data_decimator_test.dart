import 'package:flutter_test/flutter_test.dart';
import 'package:unfold_ai_app/core/utils/data_decimator.dart';
import 'package:unfold_ai_app/domain/entities/biometric_data.dart';

void main() {
  group('DataDecimator', () {
    late List<BiometricData> testData;

    setUp(() {
      testData = [
        const BiometricData(
          date: '2025-10-01',
          hrv: 50,
          rhr: 60,
          steps: 5000,
          sleepScore: 70,
        ),
        const BiometricData(
          date: '2025-10-02',
          hrv: 55,
          rhr: 65,
          steps: 6000,
          sleepScore: 75,
        ),
        const BiometricData(
          date: '2025-10-03',
          hrv: 60,
          rhr: 70,
          steps: 7000,
          sleepScore: 80,
        ),
        const BiometricData(
          date: '2025-10-04',
          hrv: 45,
          rhr: 55,
          steps: 4000,
          sleepScore: 65,
        ),
        const BiometricData(
          date: '2025-10-05',
          hrv: 70,
          rhr: 75,
          steps: 8000,
          sleepScore: 85,
        ),
      ];
    });

    test('decimateData preserves min/max values', () {
      final decimated = DataDecimator.decimateData(
        testData,
        3,
        ChartMetric.hrv,
      );

      expect(decimated.length, equals(3));

      // Check that min and max values are preserved
      final originalValues = testData.map((d) => d.hrv).toList();
      final decimatedValues = decimated.map((d) => d.value).toList();

      expect(
        decimatedValues
            .contains(originalValues.reduce((a, b) => a < b ? a : b)),
        isTrue,
      );
      expect(
        decimatedValues
            .contains(originalValues.reduce((a, b) => a > b ? a : b)),
        isTrue,
      );
    });

    test('decimateData respects target size', () {
      final decimated = DataDecimator.decimateData(
        testData,
        2,
        ChartMetric.hrv,
      );

      expect(decimated.length, equals(2));
    });

    test('decimateData returns original data when target size is larger', () {
      final decimated = DataDecimator.decimateData(
        testData,
        10,
        ChartMetric.hrv,
      );

      expect(decimated.length, equals(testData.length));
    });

    test('calculateRollingMean computes correct 7-day rolling mean', () {
      final rollingMean = DataDecimator.calculateRollingMean(
        testData,
        ChartMetric.hrv,
        3, // 3-day window for small dataset
      );

      expect(rollingMean.length, equals(3)); // 5 - 3 + 1 = 3

      // Check first rolling mean: (50 + 55 + 60) / 3 = 55
      expect(rollingMean[0].value, closeTo(55.0, 0.1));

      // Check second rolling mean: (55 + 60 + 45) / 3 = 53.33
      expect(rollingMean[1].value, closeTo(53.33, 0.1));

      // Check third rolling mean: (60 + 45 + 70) / 3 = 58.33
      expect(rollingMean[2].value, closeTo(58.33, 0.1));
    });

    test('calculateStandardDeviation computes correct standard deviation', () {
      final stdDev = DataDecimator.calculateStandardDeviation(
        testData,
        ChartMetric.hrv,
        3, // 3-day window for small dataset
      );

      expect(stdDev.length, equals(3));

      // For the first window [50, 55, 60]:
      // Mean = 55, Variance = ((50-55)² + (55-55)² + (60-55)²) / 3 = (25 + 0 + 25) / 3 = 16.67
      // Std Dev = sqrt(16.67) ≈ 4.08
      expect(stdDev[0].value, closeTo(4.08, 0.1));
    });

    test('decimateData works with different metrics', () {
      final hrvDecimated =
          DataDecimator.decimateData(testData, 3, ChartMetric.hrv);
      final rhrDecimated =
          DataDecimator.decimateData(testData, 3, ChartMetric.rhr);
      final stepsDecimated =
          DataDecimator.decimateData(testData, 3, ChartMetric.steps);

      expect(hrvDecimated.length, equals(3));
      expect(rhrDecimated.length, equals(3));
      expect(stepsDecimated.length, equals(3));

      // Check that values are correctly extracted for different metrics
      expect(hrvDecimated[0].value, equals(50.0));
      expect(rhrDecimated[0].value, equals(60.0));
      expect(stepsDecimated[0].value, equals(5000.0));
    });
  });
}
