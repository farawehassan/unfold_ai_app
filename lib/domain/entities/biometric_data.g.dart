// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'biometric_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BiometricDataImpl _$$BiometricDataImplFromJson(Map<String, dynamic> json) =>
    _$BiometricDataImpl(
      date: json['date'] as String,
      hrv: (json['hrv'] as num).toDouble(),
      rhr: (json['rhr'] as num).toInt(),
      steps: (json['steps'] as num).toInt(),
      sleepScore: (json['sleepScore'] as num).toInt(),
    );

Map<String, dynamic> _$$BiometricDataImplToJson(_$BiometricDataImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'hrv': instance.hrv,
      'rhr': instance.rhr,
      'steps': instance.steps,
      'sleepScore': instance.sleepScore,
    };

_$JournalEntryImpl _$$JournalEntryImplFromJson(Map<String, dynamic> json) =>
    _$JournalEntryImpl(
      date: json['date'] as String,
      mood: (json['mood'] as num).toInt(),
      note: json['note'] as String,
    );

Map<String, dynamic> _$$JournalEntryImplToJson(_$JournalEntryImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'mood': instance.mood,
      'note': instance.note,
    };
