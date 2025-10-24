// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'biometric_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BiometricDataModel _$BiometricDataModelFromJson(Map<String, dynamic> json) {
  return _BiometricDataModel.fromJson(json);
}

/// @nodoc
mixin _$BiometricDataModel {
  String get date => throw _privateConstructorUsedError;
  double get hrv => throw _privateConstructorUsedError;
  int get rhr => throw _privateConstructorUsedError;
  int get steps => throw _privateConstructorUsedError;
  int get sleepScore => throw _privateConstructorUsedError;

  /// Serializes this BiometricDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BiometricDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BiometricDataModelCopyWith<BiometricDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BiometricDataModelCopyWith<$Res> {
  factory $BiometricDataModelCopyWith(
          BiometricDataModel value, $Res Function(BiometricDataModel) then) =
      _$BiometricDataModelCopyWithImpl<$Res, BiometricDataModel>;
  @useResult
  $Res call({String date, double hrv, int rhr, int steps, int sleepScore});
}

/// @nodoc
class _$BiometricDataModelCopyWithImpl<$Res, $Val extends BiometricDataModel>
    implements $BiometricDataModelCopyWith<$Res> {
  _$BiometricDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BiometricDataModel
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
abstract class _$$BiometricDataModelImplCopyWith<$Res>
    implements $BiometricDataModelCopyWith<$Res> {
  factory _$$BiometricDataModelImplCopyWith(_$BiometricDataModelImpl value,
          $Res Function(_$BiometricDataModelImpl) then) =
      __$$BiometricDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String date, double hrv, int rhr, int steps, int sleepScore});
}

/// @nodoc
class __$$BiometricDataModelImplCopyWithImpl<$Res>
    extends _$BiometricDataModelCopyWithImpl<$Res, _$BiometricDataModelImpl>
    implements _$$BiometricDataModelImplCopyWith<$Res> {
  __$$BiometricDataModelImplCopyWithImpl(_$BiometricDataModelImpl _value,
      $Res Function(_$BiometricDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BiometricDataModel
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
    return _then(_$BiometricDataModelImpl(
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
class _$BiometricDataModelImpl implements _BiometricDataModel {
  const _$BiometricDataModelImpl(
      {required this.date,
      required this.hrv,
      required this.rhr,
      required this.steps,
      required this.sleepScore});

  factory _$BiometricDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BiometricDataModelImplFromJson(json);

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
    return 'BiometricDataModel(date: $date, hrv: $hrv, rhr: $rhr, steps: $steps, sleepScore: $sleepScore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BiometricDataModelImpl &&
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

  /// Create a copy of BiometricDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BiometricDataModelImplCopyWith<_$BiometricDataModelImpl> get copyWith =>
      __$$BiometricDataModelImplCopyWithImpl<_$BiometricDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BiometricDataModelImplToJson(
      this,
    );
  }
}

abstract class _BiometricDataModel implements BiometricDataModel {
  const factory _BiometricDataModel(
      {required final String date,
      required final double hrv,
      required final int rhr,
      required final int steps,
      required final int sleepScore}) = _$BiometricDataModelImpl;

  factory _BiometricDataModel.fromJson(Map<String, dynamic> json) =
      _$BiometricDataModelImpl.fromJson;

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

  /// Create a copy of BiometricDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BiometricDataModelImplCopyWith<_$BiometricDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

JournalEntryModel _$JournalEntryModelFromJson(Map<String, dynamic> json) {
  return _JournalEntryModel.fromJson(json);
}

/// @nodoc
mixin _$JournalEntryModel {
  String get date => throw _privateConstructorUsedError;
  int get mood => throw _privateConstructorUsedError;
  String get note => throw _privateConstructorUsedError;

  /// Serializes this JournalEntryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JournalEntryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JournalEntryModelCopyWith<JournalEntryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JournalEntryModelCopyWith<$Res> {
  factory $JournalEntryModelCopyWith(
          JournalEntryModel value, $Res Function(JournalEntryModel) then) =
      _$JournalEntryModelCopyWithImpl<$Res, JournalEntryModel>;
  @useResult
  $Res call({String date, int mood, String note});
}

/// @nodoc
class _$JournalEntryModelCopyWithImpl<$Res, $Val extends JournalEntryModel>
    implements $JournalEntryModelCopyWith<$Res> {
  _$JournalEntryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JournalEntryModel
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
abstract class _$$JournalEntryModelImplCopyWith<$Res>
    implements $JournalEntryModelCopyWith<$Res> {
  factory _$$JournalEntryModelImplCopyWith(_$JournalEntryModelImpl value,
          $Res Function(_$JournalEntryModelImpl) then) =
      __$$JournalEntryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String date, int mood, String note});
}

/// @nodoc
class __$$JournalEntryModelImplCopyWithImpl<$Res>
    extends _$JournalEntryModelCopyWithImpl<$Res, _$JournalEntryModelImpl>
    implements _$$JournalEntryModelImplCopyWith<$Res> {
  __$$JournalEntryModelImplCopyWithImpl(_$JournalEntryModelImpl _value,
      $Res Function(_$JournalEntryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of JournalEntryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? mood = null,
    Object? note = null,
  }) {
    return _then(_$JournalEntryModelImpl(
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
class _$JournalEntryModelImpl implements _JournalEntryModel {
  const _$JournalEntryModelImpl(
      {required this.date, required this.mood, required this.note});

  factory _$JournalEntryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$JournalEntryModelImplFromJson(json);

  @override
  final String date;
  @override
  final int mood;
  @override
  final String note;

  @override
  String toString() {
    return 'JournalEntryModel(date: $date, mood: $mood, note: $note)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JournalEntryModelImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.mood, mood) || other.mood == mood) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, mood, note);

  /// Create a copy of JournalEntryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JournalEntryModelImplCopyWith<_$JournalEntryModelImpl> get copyWith =>
      __$$JournalEntryModelImplCopyWithImpl<_$JournalEntryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JournalEntryModelImplToJson(
      this,
    );
  }
}

abstract class _JournalEntryModel implements JournalEntryModel {
  const factory _JournalEntryModel(
      {required final String date,
      required final int mood,
      required final String note}) = _$JournalEntryModelImpl;

  factory _JournalEntryModel.fromJson(Map<String, dynamic> json) =
      _$JournalEntryModelImpl.fromJson;

  @override
  String get date;
  @override
  int get mood;
  @override
  String get note;

  /// Create a copy of JournalEntryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JournalEntryModelImplCopyWith<_$JournalEntryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
