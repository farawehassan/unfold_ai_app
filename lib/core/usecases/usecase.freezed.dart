// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetBiometricDataParams {
  ChartRange get range => throw _privateConstructorUsedError;
  bool get useLargeDataset => throw _privateConstructorUsedError;

  /// Create a copy of GetBiometricDataParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetBiometricDataParamsCopyWith<GetBiometricDataParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetBiometricDataParamsCopyWith<$Res> {
  factory $GetBiometricDataParamsCopyWith(GetBiometricDataParams value,
          $Res Function(GetBiometricDataParams) then) =
      _$GetBiometricDataParamsCopyWithImpl<$Res, GetBiometricDataParams>;
  @useResult
  $Res call({ChartRange range, bool useLargeDataset});

  $ChartRangeCopyWith<$Res> get range;
}

/// @nodoc
class _$GetBiometricDataParamsCopyWithImpl<$Res,
        $Val extends GetBiometricDataParams>
    implements $GetBiometricDataParamsCopyWith<$Res> {
  _$GetBiometricDataParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetBiometricDataParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? range = null,
    Object? useLargeDataset = null,
  }) {
    return _then(_value.copyWith(
      range: null == range
          ? _value.range
          : range // ignore: cast_nullable_to_non_nullable
              as ChartRange,
      useLargeDataset: null == useLargeDataset
          ? _value.useLargeDataset
          : useLargeDataset // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of GetBiometricDataParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChartRangeCopyWith<$Res> get range {
    return $ChartRangeCopyWith<$Res>(_value.range, (value) {
      return _then(_value.copyWith(range: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetBiometricDataParamsImplCopyWith<$Res>
    implements $GetBiometricDataParamsCopyWith<$Res> {
  factory _$$GetBiometricDataParamsImplCopyWith(
          _$GetBiometricDataParamsImpl value,
          $Res Function(_$GetBiometricDataParamsImpl) then) =
      __$$GetBiometricDataParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChartRange range, bool useLargeDataset});

  @override
  $ChartRangeCopyWith<$Res> get range;
}

/// @nodoc
class __$$GetBiometricDataParamsImplCopyWithImpl<$Res>
    extends _$GetBiometricDataParamsCopyWithImpl<$Res,
        _$GetBiometricDataParamsImpl>
    implements _$$GetBiometricDataParamsImplCopyWith<$Res> {
  __$$GetBiometricDataParamsImplCopyWithImpl(
      _$GetBiometricDataParamsImpl _value,
      $Res Function(_$GetBiometricDataParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetBiometricDataParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? range = null,
    Object? useLargeDataset = null,
  }) {
    return _then(_$GetBiometricDataParamsImpl(
      range: null == range
          ? _value.range
          : range // ignore: cast_nullable_to_non_nullable
              as ChartRange,
      useLargeDataset: null == useLargeDataset
          ? _value.useLargeDataset
          : useLargeDataset // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GetBiometricDataParamsImpl implements _GetBiometricDataParams {
  const _$GetBiometricDataParamsImpl(
      {required this.range, required this.useLargeDataset});

  @override
  final ChartRange range;
  @override
  final bool useLargeDataset;

  @override
  String toString() {
    return 'GetBiometricDataParams(range: $range, useLargeDataset: $useLargeDataset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBiometricDataParamsImpl &&
            (identical(other.range, range) || other.range == range) &&
            (identical(other.useLargeDataset, useLargeDataset) ||
                other.useLargeDataset == useLargeDataset));
  }

  @override
  int get hashCode => Object.hash(runtimeType, range, useLargeDataset);

  /// Create a copy of GetBiometricDataParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetBiometricDataParamsImplCopyWith<_$GetBiometricDataParamsImpl>
      get copyWith => __$$GetBiometricDataParamsImplCopyWithImpl<
          _$GetBiometricDataParamsImpl>(this, _$identity);
}

abstract class _GetBiometricDataParams implements GetBiometricDataParams {
  const factory _GetBiometricDataParams(
      {required final ChartRange range,
      required final bool useLargeDataset}) = _$GetBiometricDataParamsImpl;

  @override
  ChartRange get range;
  @override
  bool get useLargeDataset;

  /// Create a copy of GetBiometricDataParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetBiometricDataParamsImplCopyWith<_$GetBiometricDataParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetJournalEntriesParams {
  ChartRange get range => throw _privateConstructorUsedError;

  /// Create a copy of GetJournalEntriesParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetJournalEntriesParamsCopyWith<GetJournalEntriesParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetJournalEntriesParamsCopyWith<$Res> {
  factory $GetJournalEntriesParamsCopyWith(GetJournalEntriesParams value,
          $Res Function(GetJournalEntriesParams) then) =
      _$GetJournalEntriesParamsCopyWithImpl<$Res, GetJournalEntriesParams>;
  @useResult
  $Res call({ChartRange range});

  $ChartRangeCopyWith<$Res> get range;
}

/// @nodoc
class _$GetJournalEntriesParamsCopyWithImpl<$Res,
        $Val extends GetJournalEntriesParams>
    implements $GetJournalEntriesParamsCopyWith<$Res> {
  _$GetJournalEntriesParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetJournalEntriesParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? range = null,
  }) {
    return _then(_value.copyWith(
      range: null == range
          ? _value.range
          : range // ignore: cast_nullable_to_non_nullable
              as ChartRange,
    ) as $Val);
  }

  /// Create a copy of GetJournalEntriesParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChartRangeCopyWith<$Res> get range {
    return $ChartRangeCopyWith<$Res>(_value.range, (value) {
      return _then(_value.copyWith(range: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetJournalEntriesParamsImplCopyWith<$Res>
    implements $GetJournalEntriesParamsCopyWith<$Res> {
  factory _$$GetJournalEntriesParamsImplCopyWith(
          _$GetJournalEntriesParamsImpl value,
          $Res Function(_$GetJournalEntriesParamsImpl) then) =
      __$$GetJournalEntriesParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChartRange range});

  @override
  $ChartRangeCopyWith<$Res> get range;
}

/// @nodoc
class __$$GetJournalEntriesParamsImplCopyWithImpl<$Res>
    extends _$GetJournalEntriesParamsCopyWithImpl<$Res,
        _$GetJournalEntriesParamsImpl>
    implements _$$GetJournalEntriesParamsImplCopyWith<$Res> {
  __$$GetJournalEntriesParamsImplCopyWithImpl(
      _$GetJournalEntriesParamsImpl _value,
      $Res Function(_$GetJournalEntriesParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetJournalEntriesParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? range = null,
  }) {
    return _then(_$GetJournalEntriesParamsImpl(
      range: null == range
          ? _value.range
          : range // ignore: cast_nullable_to_non_nullable
              as ChartRange,
    ));
  }
}

/// @nodoc

class _$GetJournalEntriesParamsImpl implements _GetJournalEntriesParams {
  const _$GetJournalEntriesParamsImpl({required this.range});

  @override
  final ChartRange range;

  @override
  String toString() {
    return 'GetJournalEntriesParams(range: $range)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetJournalEntriesParamsImpl &&
            (identical(other.range, range) || other.range == range));
  }

  @override
  int get hashCode => Object.hash(runtimeType, range);

  /// Create a copy of GetJournalEntriesParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetJournalEntriesParamsImplCopyWith<_$GetJournalEntriesParamsImpl>
      get copyWith => __$$GetJournalEntriesParamsImplCopyWithImpl<
          _$GetJournalEntriesParamsImpl>(this, _$identity);
}

abstract class _GetJournalEntriesParams implements GetJournalEntriesParams {
  const factory _GetJournalEntriesParams({required final ChartRange range}) =
      _$GetJournalEntriesParamsImpl;

  @override
  ChartRange get range;

  /// Create a copy of GetJournalEntriesParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetJournalEntriesParamsImplCopyWith<_$GetJournalEntriesParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
