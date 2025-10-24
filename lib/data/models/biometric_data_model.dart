import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:unfold_ai_app/domain/entities/biometric_data.dart';

part 'biometric_data_model.freezed.dart';
part 'biometric_data_model.g.dart';

@freezed

/// A class that represents the biometric data model.
class BiometricDataModel with _$BiometricDataModel {
  /// Constructor for the BiometricDataModel.
  const factory BiometricDataModel({
    required String date,
    required double hrv,
    required int rhr,
    required int steps,
    required int sleepScore,
  }) = _BiometricDataModel;

  /// Create a BiometricDataModel from a BiometricData entity.
  factory BiometricDataModel.fromEntity(BiometricData entity) =>
      BiometricDataModel(
        date: entity.date,
        hrv: entity.hrv,
        rhr: entity.rhr,
        steps: entity.steps,
        sleepScore: entity.sleepScore,
      );

  /// Create a BiometricDataModel from a JSON map.
  factory BiometricDataModel.fromJson(Map<String, dynamic> json) =>
      _$BiometricDataModelFromJson(json);
}

@freezed

/// A class that represents the journal entry model.
class JournalEntryModel with _$JournalEntryModel {
  /// Constructor for the JournalEntryModel.
  const factory JournalEntryModel({
    required String date,
    required int mood,
    required String note,
  }) = _JournalEntryModel;

  /// Create a JournalEntryModel from a JournalEntry entity.
  factory JournalEntryModel.fromEntity(JournalEntry entity) =>
      JournalEntryModel(
        date: entity.date,
        mood: entity.mood,
        note: entity.note,
      );

  /// Create a JournalEntryModel from a JSON map.
  factory JournalEntryModel.fromJson(Map<String, dynamic> json) =>
      _$JournalEntryModelFromJson(json);
}

/// Extension methods for the BiometricDataModel.
extension BiometricDataModelX on BiometricDataModel {
  /// Convert a BiometricDataModel to a BiometricData entity.
  BiometricData toEntity() => BiometricData(
        date: date,
        hrv: hrv,
        rhr: rhr,
        steps: steps,
        sleepScore: sleepScore,
      );
}

/// Extension methods for the JournalEntryModel.
extension JournalEntryModelX on JournalEntryModel {
  /// Convert a JournalEntryModel to a JournalEntry entity.
  JournalEntry toEntity() => JournalEntry(
        date: date,
        mood: mood,
        note: note,
      );
}
