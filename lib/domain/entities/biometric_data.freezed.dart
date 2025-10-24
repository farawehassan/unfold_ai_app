// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'biometric_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BiometricData _$BiometricDataFromJson(Map<String, dynamic> json) {
  return _BiometricData.fromJson(json);
}

/// @nodoc
mixin _$BiometricData {
  String get date => throw _privateConstructorUsedError;
  double get hrv => throw _privateConstructorUsedError;
  int get rhr => throw _privateConstructorUsedError;
  int get steps => throw _privateConstructorUsedError;
  int get sleepScore => throw _privateConstructorUsedError;

  /// Serializes this BiometricData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BiometricData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BiometricDataCopyWith<BiometricData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BiometricDataCopyWith<$Res> {
  factory $BiometricDataCopyWith(
          BiometricData value, $Res Function(BiometricData) then) =
      _$BiometricDataCopyWithImpl<$Res, BiometricData>;
  @useResult
  $Res call({String date, double hrv, int rhr, int steps, int sleepScore});
}

/// @nodoc
class _$BiometricDataCopyWithImpl<$Res, $Val extends BiometricData>
    implements $BiometricDataCopyWith<$Res> {
  _$BiometricDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BiometricData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? hrv = null,
    Object? rhr = null,
    Object? steps = null,
    Object? sleepScore = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      hrv: null == hrv
          ? _value.hrv
          : hrv // ignore: cast_nullable_to_non_nullable
              as double,
      rhr: null == rhr
          ? _value.rhr
          : rhr // ignore: cast_nullable_to_non_nullable
              as int,
      steps: null == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as int,
      sleepScore: null == sleepScore
          ? _value.sleepScore
          : sleepScore // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BiometricDataImplCopyWith<$Res>
    implements $BiometricDataCopyWith<$Res> {
  factory _$$BiometricDataImplCopyWith(
          _$BiometricDataImpl value, $Res Function(_$BiometricDataImpl) then) =
      __$$BiometricDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String date, double hrv, int rhr, int steps, int sleepScore});
}

/// @nodoc
class __$$BiometricDataImplCopyWithImpl<$Res>
    extends _$BiometricDataCopyWithImpl<$Res, _$BiometricDataImpl>
    implements _$$BiometricDataImplCopyWith<$Res> {
  __$$BiometricDataImplCopyWithImpl(
      _$BiometricDataImpl _value, $Res Function(_$BiometricDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of BiometricData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? hrv = null,
    Object? rhr = null,
    Object? steps = null,
    Object? sleepScore = null,
  }) {
    return _then(_$BiometricDataImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      hrv: null == hrv
          ? _value.hrv
          : hrv // ignore: cast_nullable_to_non_nullable
              as double,
      rhr: null == rhr
          ? _value.rhr
          : rhr // ignore: cast_nullable_to_non_nullable
              as int,
      steps: null == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as int,
      sleepScore: null == sleepScore
          ? _value.sleepScore
          : sleepScore // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BiometricDataImpl implements _BiometricData {
  const _$BiometricDataImpl(
      {required this.date,
      required this.hrv,
      required this.rhr,
      required this.steps,
      required this.sleepScore});

  factory _$BiometricDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$BiometricDataImplFromJson(json);

  @override
  final String date;
  @override
  final double hrv;
  @override
  final int rhr;
  @override
  final int steps;
  @override
  final int sleepScore;

  @override
  String toString() {
    return 'BiometricData(date: $date, hrv: $hrv, rhr: $rhr, steps: $steps, sleepScore: $sleepScore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BiometricDataImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.hrv, hrv) || other.hrv == hrv) &&
            (identical(other.rhr, rhr) || other.rhr == rhr) &&
            (identical(other.steps, steps) || other.steps == steps) &&
            (identical(other.sleepScore, sleepScore) ||
                other.sleepScore == sleepScore));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, date, hrv, rhr, steps, sleepScore);

  /// Create a copy of BiometricData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BiometricDataImplCopyWith<_$BiometricDataImpl> get copyWith =>
      __$$BiometricDataImplCopyWithImpl<_$BiometricDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BiometricDataImplToJson(
      this,
    );
  }
}

abstract class _BiometricData implements BiometricData {
  const factory _BiometricData(
      {required final String date,
      required final double hrv,
      required final int rhr,
      required final int steps,
      required final int sleepScore}) = _$BiometricDataImpl;

  factory _BiometricData.fromJson(Map<String, dynamic> json) =
      _$BiometricDataImpl.fromJson;

  @override
  String get date;
  @override
  double get hrv;
  @override
  int get rhr;
  @override
  int get steps;
  @override
  int get sleepScore;

  /// Create a copy of BiometricData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BiometricDataImplCopyWith<_$BiometricDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChartDataPoint {
  DateTime get date => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;
  String? get annotation => throw _privateConstructorUsedError;

  /// Create a copy of ChartDataPoint
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChartDataPointCopyWith<ChartDataPoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChartDataPointCopyWith<$Res> {
  factory $ChartDataPointCopyWith(
          ChartDataPoint value, $Res Function(ChartDataPoint) then) =
      _$ChartDataPointCopyWithImpl<$Res, ChartDataPoint>;
  @useResult
  $Res call({DateTime date, double value, String? annotation});
}

/// @nodoc
class _$ChartDataPointCopyWithImpl<$Res, $Val extends ChartDataPoint>
    implements $ChartDataPointCopyWith<$Res> {
  _$ChartDataPointCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChartDataPoint
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? value = null,
    Object? annotation = freezed,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      annotation: freezed == annotation
          ? _value.annotation
          : annotation // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChartDataPointImplCopyWith<$Res>
    implements $ChartDataPointCopyWith<$Res> {
  factory _$$ChartDataPointImplCopyWith(_$ChartDataPointImpl value,
          $Res Function(_$ChartDataPointImpl) then) =
      __$$ChartDataPointImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime date, double value, String? annotation});
}

/// @nodoc
class __$$ChartDataPointImplCopyWithImpl<$Res>
    extends _$ChartDataPointCopyWithImpl<$Res, _$ChartDataPointImpl>
    implements _$$ChartDataPointImplCopyWith<$Res> {
  __$$ChartDataPointImplCopyWithImpl(
      _$ChartDataPointImpl _value, $Res Function(_$ChartDataPointImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChartDataPoint
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? value = null,
    Object? annotation = freezed,
  }) {
    return _then(_$ChartDataPointImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      annotation: freezed == annotation
          ? _value.annotation
          : annotation // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ChartDataPointImpl implements _ChartDataPoint {
  const _$ChartDataPointImpl(
      {required this.date, required this.value, this.annotation});

  @override
  final DateTime date;
  @override
  final double value;
  @override
  final String? annotation;

  @override
  String toString() {
    return 'ChartDataPoint(date: $date, value: $value, annotation: $annotation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChartDataPointImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.annotation, annotation) ||
                other.annotation == annotation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date, value, annotation);

  /// Create a copy of ChartDataPoint
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChartDataPointImplCopyWith<_$ChartDataPointImpl> get copyWith =>
      __$$ChartDataPointImplCopyWithImpl<_$ChartDataPointImpl>(
          this, _$identity);
}

abstract class _ChartDataPoint implements ChartDataPoint {
  const factory _ChartDataPoint(
      {required final DateTime date,
      required final double value,
      final String? annotation}) = _$ChartDataPointImpl;

  @override
  DateTime get date;
  @override
  double get value;
  @override
  String? get annotation;

  /// Create a copy of ChartDataPoint
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChartDataPointImplCopyWith<_$ChartDataPointImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChartRange {
  DateTime get start => throw _privateConstructorUsedError;
  DateTime get end => throw _privateConstructorUsedError;
  int get days => throw _privateConstructorUsedError;

  /// Create a copy of ChartRange
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChartRangeCopyWith<ChartRange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChartRangeCopyWith<$Res> {
  factory $ChartRangeCopyWith(
          ChartRange value, $Res Function(ChartRange) then) =
      _$ChartRangeCopyWithImpl<$Res, ChartRange>;
  @useResult
  $Res call({DateTime start, DateTime end, int days});
}

/// @nodoc
class _$ChartRangeCopyWithImpl<$Res, $Val extends ChartRange>
    implements $ChartRangeCopyWith<$Res> {
  _$ChartRangeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChartRange
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = null,
    Object? days = null,
  }) {
    return _then(_value.copyWith(
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChartRangeImplCopyWith<$Res>
    implements $ChartRangeCopyWith<$Res> {
  factory _$$ChartRangeImplCopyWith(
          _$ChartRangeImpl value, $Res Function(_$ChartRangeImpl) then) =
      __$$ChartRangeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime start, DateTime end, int days});
}

/// @nodoc
class __$$ChartRangeImplCopyWithImpl<$Res>
    extends _$ChartRangeCopyWithImpl<$Res, _$ChartRangeImpl>
    implements _$$ChartRangeImplCopyWith<$Res> {
  __$$ChartRangeImplCopyWithImpl(
      _$ChartRangeImpl _value, $Res Function(_$ChartRangeImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChartRange
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = null,
    Object? days = null,
  }) {
    return _then(_$ChartRangeImpl(
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChartRangeImpl implements _ChartRange {
  const _$ChartRangeImpl(
      {required this.start, required this.end, required this.days});

  @override
  final DateTime start;
  @override
  final DateTime end;
  @override
  final int days;

  @override
  String toString() {
    return 'ChartRange(start: $start, end: $end, days: $days)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChartRangeImpl &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.days, days) || other.days == days));
  }

  @override
  int get hashCode => Object.hash(runtimeType, start, end, days);

  /// Create a copy of ChartRange
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChartRangeImplCopyWith<_$ChartRangeImpl> get copyWith =>
      __$$ChartRangeImplCopyWithImpl<_$ChartRangeImpl>(this, _$identity);
}

abstract class _ChartRange implements ChartRange {
  const factory _ChartRange(
      {required final DateTime start,
      required final DateTime end,
      required final int days}) = _$ChartRangeImpl;

  @override
  DateTime get start;
  @override
  DateTime get end;
  @override
  int get days;

  /// Create a copy of ChartRange
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChartRangeImplCopyWith<_$ChartRangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

JournalEntry _$JournalEntryFromJson(Map<String, dynamic> json) {
  return _JournalEntry.fromJson(json);
}

/// @nodoc
mixin _$JournalEntry {
  String get date => throw _privateConstructorUsedError;
  int get mood => throw _privateConstructorUsedError;
  String get note => throw _privateConstructorUsedError;

  /// Serializes this JournalEntry to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JournalEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JournalEntryCopyWith<JournalEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JournalEntryCopyWith<$Res> {
  factory $JournalEntryCopyWith(
          JournalEntry value, $Res Function(JournalEntry) then) =
      _$JournalEntryCopyWithImpl<$Res, JournalEntry>;
  @useResult
  $Res call({String date, int mood, String note});
}

/// @nodoc
class _$JournalEntryCopyWithImpl<$Res, $Val extends JournalEntry>
    implements $JournalEntryCopyWith<$Res> {
  _$JournalEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JournalEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? mood = null,
    Object? note = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      mood: null == mood
          ? _value.mood
          : mood // ignore: cast_nullable_to_non_nullable
              as int,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JournalEntryImplCopyWith<$Res>
    implements $JournalEntryCopyWith<$Res> {
  factory _$$JournalEntryImplCopyWith(
          _$JournalEntryImpl value, $Res Function(_$JournalEntryImpl) then) =
      __$$JournalEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String date, int mood, String note});
}

/// @nodoc
class __$$JournalEntryImplCopyWithImpl<$Res>
    extends _$JournalEntryCopyWithImpl<$Res, _$JournalEntryImpl>
    implements _$$JournalEntryImplCopyWith<$Res> {
  __$$JournalEntryImplCopyWithImpl(
      _$JournalEntryImpl _value, $Res Function(_$JournalEntryImpl) _then)
      : super(_value, _then);

  /// Create a copy of JournalEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? mood = null,
    Object? note = null,
  }) {
    return _then(_$JournalEntryImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      mood: null == mood
          ? _value.mood
          : mood // ignore: cast_nullable_to_non_nullable
              as int,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JournalEntryImpl implements _JournalEntry {
  const _$JournalEntryImpl(
      {required this.date, required this.mood, required this.note});

  factory _$JournalEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$JournalEntryImplFromJson(json);

  @override
  final String date;
  @override
  final int mood;
  @override
  final String note;

  @override
  String toString() {
    return 'JournalEntry(date: $date, mood: $mood, note: $note)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JournalEntryImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.mood, mood) || other.mood == mood) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, mood, note);

  /// Create a copy of JournalEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JournalEntryImplCopyWith<_$JournalEntryImpl> get copyWith =>
      __$$JournalEntryImplCopyWithImpl<_$JournalEntryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JournalEntryImplToJson(
      this,
    );
  }
}

abstract class _JournalEntry implements JournalEntry {
  const factory _JournalEntry(
      {required final String date,
      required final int mood,
      required final String note}) = _$JournalEntryImpl;

  factory _JournalEntry.fromJson(Map<String, dynamic> json) =
      _$JournalEntryImpl.fromJson;

  @override
  String get date;
  @override
  int get mood;
  @override
  String get note;

  /// Create a copy of JournalEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JournalEntryImplCopyWith<_$JournalEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
