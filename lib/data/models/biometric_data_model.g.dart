// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'biometric_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BiometricDataModelImpl _$$BiometricDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BiometricDataModelImpl(
      date: json['date'] as String,
      hrv: (json['hrv'] as num).toDouble(),
      rhr: (json['rhr'] as num).toInt(),
      steps: (json['steps'] as num).toInt(),
      sleepScore: (json['sleepScore'] as num).toInt(),
    );

Map<String, dynamic> _$$BiometricDataModelImplToJson(
        _$BiometricDataModelImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'hrv': instance.hrv,
      'rhr': instance.rhr,
      'steps': instance.steps,
      'sleepScore': instance.sleepScore,
    };

_$JournalEntryModelImpl _$$JournalEntryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$JournalEntryModelImpl(
      date: json['date'] as String,
      mood: (json['mood'] as num).toInt(),
      note: json['note'] as String,
    );

Map<String, dynamic> _$$JournalEntryModelImplToJson(
        _$JournalEntryModelImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'mood': instance.mood,
      'note': instance.note,
    };
