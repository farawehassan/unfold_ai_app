// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DashboardEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChartRange range) changeRange,
    required TResult Function(ChartRange range) loadData,
    required TResult Function() retry,
    required TResult Function() toggleLargeDataset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChartRange range)? changeRange,
    TResult? Function(ChartRange range)? loadData,
    TResult? Function()? retry,
    TResult? Function()? toggleLargeDataset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChartRange range)? changeRange,
    TResult Function(ChartRange range)? loadData,
    TResult Function()? retry,
    TResult Function()? toggleLargeDataset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeRange value) changeRange,
    required TResult Function(_LoadData value) loadData,
    required TResult Function(_Retry value) retry,
    required TResult Function(_ToggleLargeDataset value) toggleLargeDataset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeRange value)? changeRange,
    TResult? Function(_LoadData value)? loadData,
    TResult? Function(_Retry value)? retry,
    TResult? Function(_ToggleLargeDataset value)? toggleLargeDataset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeRange value)? changeRange,
    TResult Function(_LoadData value)? loadData,
    TResult Function(_Retry value)? retry,
    TResult Function(_ToggleLargeDataset value)? toggleLargeDataset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardEventCopyWith<$Res> {
  factory $DashboardEventCopyWith(
          DashboardEvent value, $Res Function(DashboardEvent) then) =
      _$DashboardEventCopyWithImpl<$Res, DashboardEvent>;
}

/// @nodoc
class _$DashboardEventCopyWithImpl<$Res, $Val extends DashboardEvent>
    implements $DashboardEventCopyWith<$Res> {
  _$DashboardEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ChangeRangeImplCopyWith<$Res> {
  factory _$$ChangeRangeImplCopyWith(
          _$ChangeRangeImpl value, $Res Function(_$ChangeRangeImpl) then) =
      __$$ChangeRangeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ChartRange range});

  $ChartRangeCopyWith<$Res> get range;
}

/// @nodoc
class __$$ChangeRangeImplCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$ChangeRangeImpl>
    implements _$$ChangeRangeImplCopyWith<$Res> {
  __$$ChangeRangeImplCopyWithImpl(
      _$ChangeRangeImpl _value, $Res Function(_$ChangeRangeImpl) _then)
      : super(_value, _then);

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? range = null,
  }) {
    return _then(_$ChangeRangeImpl(
      range: null == range
          ? _value.range
          : range // ignore: cast_nullable_to_non_nullable
              as ChartRange,
    ));
  }

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChartRangeCopyWith<$Res> get range {
    return $ChartRangeCopyWith<$Res>(_value.range, (value) {
      return _then(_value.copyWith(range: value));
    });
  }
}

/// @nodoc

class _$ChangeRangeImpl implements _ChangeRange {
  const _$ChangeRangeImpl({required this.range});

  @override
  final ChartRange range;

  @override
  String toString() {
    return 'DashboardEvent.changeRange(range: $range)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeRangeImpl &&
            (identical(other.range, range) || other.range == range));
  }

  @override
  int get hashCode => Object.hash(runtimeType, range);

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeRangeImplCopyWith<_$ChangeRangeImpl> get copyWith =>
      __$$ChangeRangeImplCopyWithImpl<_$ChangeRangeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChartRange range) changeRange,
    required TResult Function(ChartRange range) loadData,
    required TResult Function() retry,
    required TResult Function() toggleLargeDataset,
  }) {
    return changeRange(range);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChartRange range)? changeRange,
    TResult? Function(ChartRange range)? loadData,
    TResult? Function()? retry,
    TResult? Function()? toggleLargeDataset,
  }) {
    return changeRange?.call(range);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChartRange range)? changeRange,
    TResult Function(ChartRange range)? loadData,
    TResult Function()? retry,
    TResult Function()? toggleLargeDataset,
    required TResult orElse(),
  }) {
    if (changeRange != null) {
      return changeRange(range);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeRange value) changeRange,
    required TResult Function(_LoadData value) loadData,
    required TResult Function(_Retry value) retry,
    required TResult Function(_ToggleLargeDataset value) toggleLargeDataset,
  }) {
    return changeRange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeRange value)? changeRange,
    TResult? Function(_LoadData value)? loadData,
    TResult? Function(_Retry value)? retry,
    TResult? Function(_ToggleLargeDataset value)? toggleLargeDataset,
  }) {
    return changeRange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeRange value)? changeRange,
    TResult Function(_LoadData value)? loadData,
    TResult Function(_Retry value)? retry,
    TResult Function(_ToggleLargeDataset value)? toggleLargeDataset,
    required TResult orElse(),
  }) {
    if (changeRange != null) {
      return changeRange(this);
    }
    return orElse();
  }
}

abstract class _ChangeRange implements DashboardEvent {
  const factory _ChangeRange({required final ChartRange range}) =
      _$ChangeRangeImpl;

  ChartRange get range;

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeRangeImplCopyWith<_$ChangeRangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadDataImplCopyWith<$Res> {
  factory _$$LoadDataImplCopyWith(
          _$LoadDataImpl value, $Res Function(_$LoadDataImpl) then) =
      __$$LoadDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ChartRange range});

  $ChartRangeCopyWith<$Res> get range;
}

/// @nodoc
class __$$LoadDataImplCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$LoadDataImpl>
    implements _$$LoadDataImplCopyWith<$Res> {
  __$$LoadDataImplCopyWithImpl(
      _$LoadDataImpl _value, $Res Function(_$LoadDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? range = null,
  }) {
    return _then(_$LoadDataImpl(
      range: null == range
          ? _value.range
          : range // ignore: cast_nullable_to_non_nullable
              as ChartRange,
    ));
  }

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChartRangeCopyWith<$Res> get range {
    return $ChartRangeCopyWith<$Res>(_value.range, (value) {
      return _then(_value.copyWith(range: value));
    });
  }
}

/// @nodoc

class _$LoadDataImpl implements _LoadData {
  const _$LoadDataImpl({required this.range});

  @override
  final ChartRange range;

  @override
  String toString() {
    return 'DashboardEvent.loadData(range: $range)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadDataImpl &&
            (identical(other.range, range) || other.range == range));
  }

  @override
  int get hashCode => Object.hash(runtimeType, range);

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadDataImplCopyWith<_$LoadDataImpl> get copyWith =>
      __$$LoadDataImplCopyWithImpl<_$LoadDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChartRange range) changeRange,
    required TResult Function(ChartRange range) loadData,
    required TResult Function() retry,
    required TResult Function() toggleLargeDataset,
  }) {
    return loadData(range);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChartRange range)? changeRange,
    TResult? Function(ChartRange range)? loadData,
    TResult? Function()? retry,
    TResult? Function()? toggleLargeDataset,
  }) {
    return loadData?.call(range);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChartRange range)? changeRange,
    TResult Function(ChartRange range)? loadData,
    TResult Function()? retry,
    TResult Function()? toggleLargeDataset,
    required TResult orElse(),
  }) {
    if (loadData != null) {
      return loadData(range);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeRange value) changeRange,
    required TResult Function(_LoadData value) loadData,
    required TResult Function(_Retry value) retry,
    required TResult Function(_ToggleLargeDataset value) toggleLargeDataset,
  }) {
    return loadData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeRange value)? changeRange,
    TResult? Function(_LoadData value)? loadData,
    TResult? Function(_Retry value)? retry,
    TResult? Function(_ToggleLargeDataset value)? toggleLargeDataset,
  }) {
    return loadData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeRange value)? changeRange,
    TResult Function(_LoadData value)? loadData,
    TResult Function(_Retry value)? retry,
    TResult Function(_ToggleLargeDataset value)? toggleLargeDataset,
    required TResult orElse(),
  }) {
    if (loadData != null) {
      return loadData(this);
    }
    return orElse();
  }
}

abstract class _LoadData implements DashboardEvent {
  const factory _LoadData({required final ChartRange range}) = _$LoadDataImpl;

  ChartRange get range;

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadDataImplCopyWith<_$LoadDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RetryImplCopyWith<$Res> {
  factory _$$RetryImplCopyWith(
          _$RetryImpl value, $Res Function(_$RetryImpl) then) =
      __$$RetryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RetryImplCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$RetryImpl>
    implements _$$RetryImplCopyWith<$Res> {
  __$$RetryImplCopyWithImpl(
      _$RetryImpl _value, $Res Function(_$RetryImpl) _then)
      : super(_value, _then);

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RetryImpl implements _Retry {
  const _$RetryImpl();

  @override
  String toString() {
    return 'DashboardEvent.retry()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RetryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChartRange range) changeRange,
    required TResult Function(ChartRange range) loadData,
    required TResult Function() retry,
    required TResult Function() toggleLargeDataset,
  }) {
    return retry();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChartRange range)? changeRange,
    TResult? Function(ChartRange range)? loadData,
    TResult? Function()? retry,
    TResult? Function()? toggleLargeDataset,
  }) {
    return retry?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChartRange range)? changeRange,
    TResult Function(ChartRange range)? loadData,
    TResult Function()? retry,
    TResult Function()? toggleLargeDataset,
    required TResult orElse(),
  }) {
    if (retry != null) {
      return retry();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeRange value) changeRange,
    required TResult Function(_LoadData value) loadData,
    required TResult Function(_Retry value) retry,
    required TResult Function(_ToggleLargeDataset value) toggleLargeDataset,
  }) {
    return retry(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeRange value)? changeRange,
    TResult? Function(_LoadData value)? loadData,
    TResult? Function(_Retry value)? retry,
    TResult? Function(_ToggleLargeDataset value)? toggleLargeDataset,
  }) {
    return retry?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeRange value)? changeRange,
    TResult Function(_LoadData value)? loadData,
    TResult Function(_Retry value)? retry,
    TResult Function(_ToggleLargeDataset value)? toggleLargeDataset,
    required TResult orElse(),
  }) {
    if (retry != null) {
      return retry(this);
    }
    return orElse();
  }
}

abstract class _Retry implements DashboardEvent {
  const factory _Retry() = _$RetryImpl;
}

/// @nodoc
abstract class _$$ToggleLargeDatasetImplCopyWith<$Res> {
  factory _$$ToggleLargeDatasetImplCopyWith(_$ToggleLargeDatasetImpl value,
          $Res Function(_$ToggleLargeDatasetImpl) then) =
      __$$ToggleLargeDatasetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToggleLargeDatasetImplCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$ToggleLargeDatasetImpl>
    implements _$$ToggleLargeDatasetImplCopyWith<$Res> {
  __$$ToggleLargeDatasetImplCopyWithImpl(_$ToggleLargeDatasetImpl _value,
      $Res Function(_$ToggleLargeDatasetImpl) _then)
      : super(_value, _then);

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ToggleLargeDatasetImpl implements _ToggleLargeDataset {
  const _$ToggleLargeDatasetImpl();

  @override
  String toString() {
    return 'DashboardEvent.toggleLargeDataset()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ToggleLargeDatasetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChartRange range) changeRange,
    required TResult Function(ChartRange range) loadData,
    required TResult Function() retry,
    required TResult Function() toggleLargeDataset,
  }) {
    return toggleLargeDataset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChartRange range)? changeRange,
    TResult? Function(ChartRange range)? loadData,
    TResult? Function()? retry,
    TResult? Function()? toggleLargeDataset,
  }) {
    return toggleLargeDataset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChartRange range)? changeRange,
    TResult Function(ChartRange range)? loadData,
    TResult Function()? retry,
    TResult Function()? toggleLargeDataset,
    required TResult orElse(),
  }) {
    if (toggleLargeDataset != null) {
      return toggleLargeDataset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeRange value) changeRange,
    required TResult Function(_LoadData value) loadData,
    required TResult Function(_Retry value) retry,
    required TResult Function(_ToggleLargeDataset value) toggleLargeDataset,
  }) {
    return toggleLargeDataset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeRange value)? changeRange,
    TResult? Function(_LoadData value)? loadData,
    TResult? Function(_Retry value)? retry,
    TResult? Function(_ToggleLargeDataset value)? toggleLargeDataset,
  }) {
    return toggleLargeDataset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeRange value)? changeRange,
    TResult Function(_LoadData value)? loadData,
    TResult Function(_Retry value)? retry,
    TResult Function(_ToggleLargeDataset value)? toggleLargeDataset,
    required TResult orElse(),
  }) {
    if (toggleLargeDataset != null) {
      return toggleLargeDataset(this);
    }
    return orElse();
  }
}

abstract class _ToggleLargeDataset implements DashboardEvent {
  const factory _ToggleLargeDataset() = _$ToggleLargeDatasetImpl;
}

/// @nodoc
mixin _$DashboardState {
  ChartRange get selectedRange => throw _privateConstructorUsedError;
  List<BiometricData> get biometricData => throw _privateConstructorUsedError;
  List<JournalEntry> get journalEntries => throw _privateConstructorUsedError;
  bool get showLargeDataset => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String message,
            ChartRange selectedRange,
            List<BiometricData> biometricData,
            List<JournalEntry> journalEntries,
            bool showLargeDataset)
        error,
    required TResult Function(
            ChartRange selectedRange,
            List<BiometricData> biometricData,
            List<JournalEntry> journalEntries,
            bool showLargeDataset)
        initial,
    required TResult Function(
            List<BiometricData> biometricData,
            List<JournalEntry> journalEntries,
            ChartRange selectedRange,
            bool showLargeDataset)
        loaded,
    required TResult Function(
            ChartRange selectedRange,
            List<BiometricData> biometricData,
            List<JournalEntry> journalEntries,
            bool showLargeDataset)
        loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String message,
            ChartRange selectedRange,
            List<BiometricData> biometricData,
            List<JournalEntry> journalEntries,
            bool showLargeDataset)?
        error,
    TResult? Function(
            ChartRange selectedRange,
            List<BiometricData> biometricData,
            List<JournalEntry> journalEntries,
            bool showLargeDataset)?
        initial,
    TResult? Function(
            List<BiometricData> biometricData,
            List<JournalEntry> journalEntries,
            ChartRange selectedRange,
            bool showLargeDataset)?
        loaded,
    TResult? Function(
            ChartRange selectedRange,
            List<BiometricData> biometricData,
            List<JournalEntry> journalEntries,
            bool showLargeDataset)?
        loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String message,
            ChartRange selectedRange,
            List<BiometricData> biometricData,
            List<JournalEntry> journalEntries,
            bool showLargeDataset)?
        error,
    TResult Function(
            ChartRange selectedRange,
            List<BiometricData> biometricData,
            List<JournalEntry> journalEntries,
            bool showLargeDataset)?
        initial,
    TResult Function(
            List<BiometricData> biometricData,
            List<JournalEntry> journalEntries,
            ChartRange selectedRange,
            bool showLargeDataset)?
        loaded,
    TResult Function(
            ChartRange selectedRange,
            List<BiometricData> biometricData,
            List<JournalEntry> journalEntries,
            bool showLargeDataset)?
        loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Error value) error,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Error value)? error,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Loading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of DashboardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DashboardStateCopyWith<DashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardStateCopyWith<$Res> {
  factory $DashboardStateCopyWith(
          DashboardState value, $Res Function(DashboardState) then) =
      _$DashboardStateCopyWithImpl<$Res, DashboardState>;
  @useResult
  $Res call(
      {ChartRange selectedRange,
      List<BiometricData> biometricData,
      List<JournalEntry> journalEntries,
      bool showLargeDataset});

  $ChartRangeCopyWith<$Res> get selectedRange;
}

/// @nodoc
class _$DashboardStateCopyWithImpl<$Res, $Val extends DashboardState>
    implements $DashboardStateCopyWith<$Res> {
  _$DashboardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DashboardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedRange = null,
    Object? biometricData = null,
    Object? journalEntries = null,
    Object? showLargeDataset = null,
  }) {
    return _then(_value.copyWith(
      selectedRange: null == selectedRange
          ? _value.selectedRange
          : selectedRange // ignore: cast_nullable_to_non_nullable
              as ChartRange,
      biometricData: null == biometricData
          ? _value.biometricData
          : biometricData // ignore: cast_nullable_to_non_nullable
              as List<BiometricData>,
      journalEntries: null == journalEntries
          ? _value.journalEntries
          : journalEntries // ignore: cast_nullable_to_non_nullable
              as List<JournalEntry>,
      showLargeDataset: null == showLargeDataset
          ? _value.showLargeDataset
          : showLargeDataset // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of DashboardState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChartRangeCopyWith<$Res> get selectedRange {
    return $ChartRangeCopyWith<$Res>(_value.selectedRange, (value) {
      return _then(_value.copyWith(selectedRange: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res>
    implements $DashboardStateCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String message,
      ChartRange selectedRange,
      List<BiometricData> biometricData,
      List<JournalEntry> journalEntries,
      bool showLargeDataset});

  @override
  $ChartRangeCopyWith<$Res> get selectedRange;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of DashboardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? selectedRange = null,
    Object? biometricData = null,
    Object? journalEntries = null,
    Object? showLargeDataset = null,
  }) {
    return _then(_$ErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      selectedRange: null == selectedRange
          ? _value.selectedRange
          : selectedRange // ignore: cast_nullable_to_non_nullable
              as ChartRange,
      biometricData: null == biometricData
          ? _value._biometricData
          : biometricData // ignore: cast_nullable_to_non_nullable
              as List<BiometricData>,
      journalEntries: null == journalEntries
          ? _value._journalEntries
          : journalEntries // ignore: cast_nullable_to_non_nullable
              as List<JournalEntry>,
      showLargeDataset: null == showLargeDataset
          ? _value.showLargeDataset
          : showLargeDataset // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(
      {required this.message,
      required this.selectedRange,
      final List<BiometricData> biometricData = const <BiometricData>[],
      final List<JournalEntry> journalEntries = const <JournalEntry>[],
      this.showLargeDataset = false})
      : _biometricData = biometricData,
        _journalEntries = journalEntries;

  @override
  final String message;
  @override
  final ChartRange selectedRange;
  final List<BiometricData> _biometricData;
  @override
  @JsonKey()
  List<BiometricData> get biometricData {
    if (_biometricData is EqualUnmodifiableListView) return _biometricData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_biometricData);
  }

  final List<JournalEntry> _journalEntries;
  @override
  @JsonKey()
  List<JournalEntry> get journalEntries {
    if (_journalEntries is EqualUnmodifiableListView) return _journalEntries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_journalEntries);
  }

  @override
  @JsonKey()
  final bool showLargeDataset;

  @override
  String toString() {
    return 'DashboardState.error(message: $message, selectedRange: $selectedRange, biometricData: $biometricData, journalEntries: $journalEntries, showLargeDataset: $showLargeDataset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.selectedRange, selectedRange) ||
                other.selectedRange == selectedRange) &&
            const DeepCollectionEquality()
                .equals(other._biometricData, _biometricData) &&
            const DeepCollectionEquality()
                .equals(other._journalEntries, _journalEntries) &&
            (identical(other.showLargeDataset, showLargeDataset) ||
                other.showLargeDataset == showLargeDataset));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      message,
      selectedRange,
      const DeepCollectionEquality().hash(_biometricData),
      const DeepCollectionEquality().hash(_journalEntries),
      showLargeDataset);

  /// Create a copy of DashboardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String message,
            ChartRange selectedRange,
            List<BiometricData> biometricData,
            List<JournalEntry> journalEntries,
            bool showLargeDataset)
        error,
    required TResult Function(
            ChartRange selectedRange,
            List<BiometricData> biometricData,
            List<JournalEntry> journalEntries,
            bool showLargeDataset)
        initial,
    required TResult Function(
            List<BiometricData> biometricData,
            List<JournalEntry> journalEntries,
            ChartRange selectedRange,
            bool showLargeDataset)
        loaded,
    required TResult Function(
            ChartRange selectedRange,
            List<BiometricData> biometricData,
            List<JournalEntry> journalEntries,
            bool showLargeDataset)
        loading,
  }) {
    return error(message, selectedRange, biometricData, journalEntries,
        showLargeDataset);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String message,
            ChartRange selectedRange,
            List<BiometricData> biometricData,
            List<JournalEntry> journalEntries,
            bool showLargeDataset)?
        error,
    TResult? Function(
            ChartRange selectedRange,
            List<BiometricData> biometricData,
            List<JournalEntry> journalEntries,
            bool showLargeDataset)?
        initial,
    TResult? Function(
            List<BiometricData> biometricData,
            List<JournalEntry> journalEntries,
            ChartRange selectedRange,
            bool showLargeDataset)?
        loaded,
    TResult? Function(
            ChartRange selectedRange,
            List<BiometricData> biometricData,
            List<JournalEntry> journalEntries,
            bool showLargeDataset)?
        loading,
  }) {
    return error?.call(message, selectedRange, biometricData, journalEntries,
        showLargeDataset);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String message,
            ChartRange selectedRange,
            List<BiometricData> biometricData,
            List<JournalEntry> journalEntries,
            bool showLargeDataset)?
        error,
    TResult Function(
            ChartRange selectedRange,
            List<BiometricData> biometricData,
            List<JournalEntry> journalEntries,
            bool showLargeDataset)?
        initial,
    TResult Function(
            List<BiometricData> biometricData,
            List<JournalEntry> journalEntries,
            ChartRange selectedRange,
            bool showLargeDataset)?
        loaded,
    TResult Function(
            ChartRange selectedRange,
            List<BiometricData> biometricData,
            List<JournalEntry> journalEntries,
            bool showLargeDataset)?
        loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, selectedRange, biometricData, journalEntries,
          showLargeDataset);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Error value) error,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Error value)? error,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Loading value)? loading,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements DashboardState {
  const factory _Error(
      {required final String message,
      required final ChartRange selectedRange,
      final List<BiometricData> biometricData,
      final List<JournalEntry> journalEntries,
      final bool showLargeDataset}) = _$ErrorImpl;

  String get message;
  @override
  ChartRange get selectedRange;
  @override
  List<BiometricData> get biometricData;
  @override
  List<JournalEntry> get journalEntries;
  @override
  bool get showLargeDataset;

  /// Create a copy of DashboardState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $DashboardStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ChartRange selectedRange,
      List<BiometricData> biometricData,
      List<JournalEntry> journalEntries,
      bool showLargeDataset});

  @override
  $ChartRangeCopyWith<$Res> get selectedRange;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of DashboardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedRange = null,
    Object? biometricData = null,
    Object? journalEntries = null,
    Object? showLargeDataset = null,
  }) {
    return _then(_$InitialImpl(
      selectedRange: null == selectedRange
          ? _value.selectedRange
          : selectedRange // ignore: cast_nullable_to_non_nullable
              as ChartRange,
      biometricData: null == biometricData
          ? _value._biometricData
          : biometricData // ignore: cast_nullable_to_non_nullable
              as List<BiometricData>,
      journalEntries: null == journalEntries
          ? _value._journalEntries
          : journalEntries // ignore: cast_nullable_to_non_nullable
              as List<JournalEntry>,
      showLargeDataset: null == showLargeDataset
          ? _value.showLargeDataset
          : showLargeDataset // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.selectedRange,
      final List<BiometricData> biometricData = const <BiometricData>[],
      final List<JournalEntry> journalEntries = const <JournalEntry>[],
      this.showLargeDataset = false})
      : _biometricData = biometricData,
        _journalEntries = journalEntries;

  @override
  final ChartRange selectedRange;
  final List<BiometricData> _biometricData;
  @override
  @JsonKey()
  List<BiometricData> get biometricData {
    if (_biometricData is EqualUnmodifiableListView) return _biometricData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_biometricData);
  }

  final List<JournalEntry> _journalEntries;
  @override
  @JsonKey()
  List<JournalEntry> get journalEntries {
    if (_journalEntries is EqualUnmodifiableListView) return _journalEntries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_journalEntries);
  }

  @override
  @JsonKey()
  final bool showLargeDataset;

  @override
  String toString() {
    return 'DashboardState.initial(selectedRange: $selectedRange, biometricData: $biometricData, journalEntries: $journalEntries, showLargeDataset: $showLargeDataset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.selectedRange, selectedRange) ||
                other.selectedRange == selectedRange) &&
            const DeepCollectionEquality()
                .equals(other._biometricData, _biometricData) &&
            const DeepCollectionEquality()
                .equals(other._journalEntries, _journalEntries) &&
            (identical(other.showLargeDataset, showLargeDataset) ||
                other.showLargeDataset == showLargeDataset));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      selectedRange,
      const DeepCollectionEquality().hash(_biometricData),
      const DeepCollectionEquality().hash(_journalEntries),
      showLargeDataset);

  /// Create a copy of DashboardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String message,
            ChartRange selectedRange,
            List<BiometricData> biometricData,
            List<JournalEntry> journalEntries,
            bool showLargeDataset)
        error,
    required TResult Function(
            ChartRange selectedRange,
            List<BiometricData> biometricData,
            List<JournalEntry> journalEntries,
            bool showLargeDataset)
        initial,
    required TResult Function(
            List<BiometricData> biometricData,
            List<JournalEntry> journalEntries,
            ChartRange selectedRange,
            bool showLargeDataset)
        loaded,
    required TResult Function(
            ChartRange selectedRange,
            List<BiometricData> biometricData,
            List<JournalEntry> journalEntries,
            bool showLargeDataset)
        loading,
  }) {
    return initial(
        selectedRange, biometricData, journalEntries, showLargeDataset);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String message,
            ChartRange selectedRange,
            List<BiometricData> biometricData,
            List<JournalEntry> journalEntries,
            bool showLargeDataset)?
        error,
    TResult? Function(
            ChartRange selectedRange,
            List<BiometricData> biometricData,
            List<JournalEntry> journalEntries,
            bool showLargeDataset)?
        initial,
    TResult? Function(
            List<BiometricData> biometricData,
            List<JournalEntry> journalEntries,
            ChartRange selectedRange,
            bool showLargeDataset)?
        loaded,
    TResult? Function(
            ChartRange selectedRange,
            List<BiometricData> biometricData,
            List<JournalEntry> journalEntries,
            bool showLargeDataset)?
        loading,
  }) {
    return initial?.call(
        selectedRange, biometricData, journalEntries, showLargeDataset);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String message,
            ChartRange selectedRange,
            List<BiometricData> biometricData,
            List<JournalEntry> journalEntries,
            bool showLargeDataset)?
        error,
    TResult Function(
            ChartRange selectedRange,
            List<BiometricData> biometricData,
            List<JournalEntry> journalEntries,
            bool showLargeDataset)?
        initial,
    TResult Function(
            List<BiometricData> biometricData,
            List<JournalEntry> journalEntries,
            ChartRange selectedRange,
            bool showLargeDataset)?
        loaded,
    TResult Function(
            ChartRange selectedRange,
            List<BiometricData> biometricData,
            List<JournalEntry> journalEntries,
            bool showLargeDataset)?
        loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(
          selectedRange, biometricData, journalEntries, showLargeDataset);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Error value) error,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Error value)? error,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Loading value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DashboardState {
  const factory _Initial(
      {required final ChartRange selectedRange,
      final List<BiometricData> biometricData,
      final List<JournalEntry> journalEntries,
      final bool showLargeDataset}) = _$InitialImpl;

  @override
  ChartRange get selectedRange;
  @override
  List<BiometricData> get biometricData;
  @override
  List<JournalEntry> get journalEntries;
  @override
  bool get showLargeDataset;

  /// Create a copy of DashboardState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res>
    implements $DashboardStateCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<BiometricData> biometricData,
      List<JournalEntry> journalEntries,
      ChartRange selectedRange,
      bool showLargeDataset});

  @override
  $ChartRangeCopyWith<$Res> get selectedRange;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of DashboardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? biometricData = null,
    Object? journalEntries = null,
    Object? selectedRange = null,
    Object? showLargeDataset = null,
  }) {
    return _then(_$LoadedImpl(
      biometricData: null == biometricData
          ? _value._biometricData
          : biometricData // ignore: cast_nullable_to_non_nullable
              as List<BiometricData>,
      journalEntries: null == journalEntries
          ? _value._journalEntries
          : journalEntries // ignore: cast_nullable_to_non_nullable
              as List<JournalEntry>,
      selectedRange: null == selectedRange
          ? _value.selectedRange
          : selectedRange // ignore: cast_nullable_to_non_nullable
              as ChartRange,
      showLargeDataset: null == showLargeDataset
          ? _value.showLargeDataset
          : showLargeDataset // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(
      {required final List<BiometricData> biometricData,
      required final List<JournalEntry> journalEntries,
      required this.selectedRange,
      required this.showLargeDataset})
      : _biometricData = biometricData,
        _journalEntries = journalEntries;

  final List<BiometricData> _biometricData;
  @override
  List<BiometricData> get biometricData {
    if (_biometricData is EqualUnmodifiableListView) return _biometricData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_biometricData);
  }

  final List<JournalEntry> _journalEntries;
  @override
  List<JournalEntry> get journalEntries {
    if (_journalEntries is EqualUnmodifiableListView) return _journalEntries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_journalEntries);
  }

  @override
  final ChartRange selectedRange;
  @override
  final bool showLargeDataset;

  @override
  String toString() {
    return 'DashboardState.loaded(biometricData: $biometricData, journalEntries: $journalEntries, selectedRange: $selectedRange, showLargeDataset: $showLargeDataset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._biometricData, _biometricData) &&
            const DeepCollectionEquality()
                .equals(other._journalEntries, _journalEntries) &&
            (identical(other.selectedRange, selectedRange) ||
                other.selectedRange == selectedRange) &&
            (identical(other.showLargeDataset, showLargeDataset) ||
                other.showLargeDataset == showLargeDataset));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_biometricData),
      const DeepCollectionEquality().hash(_journalEntries),
      selectedRange,
      showLargeDataset);

  /// Create a copy of DashboardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String message,
            ChartRange selectedRange,
            List<BiometricData> biometricData,
            List<JournalEntry> journalEntries,
            bool showLargeDataset)
        error,
    required TResult Function(
            ChartRange selectedRange,
            List<BiometricData> biometricData,
            List<JournalEntry> journalEntries,
            bool showLargeDataset)
        initial,
    required TResult Function(
            List<BiometricData> biometricData,
            List<JournalEntry> journalEntries,
            ChartRange selectedRange,
            bool showLargeDataset)
        loaded,
    required TResult Function(
            ChartRange selectedRange,
            List<BiometricData> biometricData,
            List<JournalEntry> journalEntries,
            bool showLargeDataset)
        loading,
  }) {
    return loaded(
        biometricData, journalEntries, selectedRange, showLargeDataset);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String message,
            ChartRange selectedRange,
            List<BiometricData> biometricData,
            List<JournalEntry> journalEntries,
            bool showLargeDataset)?
        error,
    TResult? Function(
            ChartRange selectedRange,
            List<BiometricData> biometricData,
            List<JournalEntry> journalEntries,
            bool showLargeDataset)?
        initial,
    TResult? Function(
            List<BiometricData> biometricData,
            List<JournalEntry> journalEntries,
            ChartRange selectedRange,
            bool showLargeDataset)?
        loaded,
    TResult? Function(
            ChartRange selectedRange,
            List<BiometricData> biometricData,
            List<JournalEntry> journalEntries,
            bool showLargeDataset)?
        loading,
  }) {
    return loaded?.call(
        biometricData, journalEntries, selectedRange, showLargeDataset);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String message,
            ChartRange selectedRange,
            List<BiometricData> biometricData,
            List<JournalEntry> journalEntries,
            bool showLargeDataset)?
        error,
    TResult Function(
            ChartRange selectedRange,
            List<BiometricData> biometricData,
            List<JournalEntry> journalEntries,
            bool showLargeDataset)?
        initial,
    TResult Function(
            List<BiometricData> biometricData,
            List<JournalEntry> journalEntries,
            ChartRange selectedRange,
            bool showLargeDataset)?
        loaded,
    TResult Function(
            ChartRange selectedRange,
            List<BiometricData> biometricData,
            List<JournalEntry> journalEntries,
            bool showLargeDataset)?
        loading,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(
          biometricData, journalEntries, selectedRange, showLargeDataset);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Error value) error,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Error value)? error,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Loading value)? loading,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements DashboardState {
  const factory _Loaded(
      {required final List<BiometricData> biometricData,
      required final List<JournalEntry> journalEntries,
      required final ChartRange selectedRange,
      required final bool showLargeDataset}) = _$LoadedImpl;

  @override
  List<BiometricData> get biometricData;
  @override
  List<JournalEntry> get journalEntries;
  @override
  ChartRange get selectedRange;
  @override
  bool get showLargeDataset;

  /// Create a copy of DashboardState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res>
    implements $DashboardStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ChartRange selectedRange,
      List<BiometricData> biometricData,
      List<JournalEntry> journalEntries,
      bool showLargeDataset});

  @override
  $ChartRangeCopyWith<$Res> get selectedRange;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of DashboardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedRange = null,
    Object? biometricData = null,
    Object? journalEntries = null,
    Object? showLargeDataset = null,
  }) {
    return _then(_$LoadingImpl(
      selectedRange: null == selectedRange
          ? _value.selectedRange
          : selectedRange // ignore: cast_nullable_to_non_nullable
              as ChartRange,
      biometricData: null == biometricData
          ? _value._biometricData
          : biometricData // ignore: cast_nullable_to_non_nullable
              as List<BiometricData>,
      journalEntries: null == journalEntries
          ? _value._journalEntries
          : journalEntries // ignore: cast_nullable_to_non_nullable
              as List<JournalEntry>,
      showLargeDataset: null == showLargeDataset
          ? _value.showLargeDataset
          : showLargeDataset // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl(
      {required this.selectedRange,
      final List<BiometricData> biometricData = const <BiometricData>[],
      final List<JournalEntry> journalEntries = const <JournalEntry>[],
      this.showLargeDataset = false})
      : _biometricData = biometricData,
        _journalEntries = journalEntries;

  @override
  final ChartRange selectedRange;
  final List<BiometricData> _biometricData;
  @override
  @JsonKey()
  List<BiometricData> get biometricData {
    if (_biometricData is EqualUnmodifiableListView) return _biometricData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_biometricData);
  }

  final List<JournalEntry> _journalEntries;
  @override
  @JsonKey()
  List<JournalEntry> get journalEntries {
    if (_journalEntries is EqualUnmodifiableListView) return _journalEntries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_journalEntries);
  }

  @override
  @JsonKey()
  final bool showLargeDataset;

  @override
  String toString() {
    return 'DashboardState.loading(selectedRange: $selectedRange, biometricData: $biometricData, journalEntries: $journalEntries, showLargeDataset: $showLargeDataset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            (identical(other.selectedRange, selectedRange) ||
                other.selectedRange == selectedRange) &&
            const DeepCollectionEquality()
                .equals(other._biometricData, _biometricData) &&
            const DeepCollectionEquality()
                .equals(other._journalEntries, _journalEntries) &&
            (identical(other.showLargeDataset, showLargeDataset) ||
                other.showLargeDataset == showLargeDataset));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      selectedRange,
      const DeepCollectionEquality().hash(_biometricData),
      const DeepCollectionEquality().hash(_journalEntries),
      showLargeDataset);

  /// Create a copy of DashboardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String message,
            ChartRange selectedRange,
            List<BiometricData> biometricData,
            List<JournalEntry> journalEntries,
            bool showLargeDataset)
        error,
    required TResult Function(
            ChartRange selectedRange,
            List<BiometricData> biometricData,
            List<JournalEntry> journalEntries,
            bool showLargeDataset)
        initial,
    required TResult Function(
            List<BiometricData> biometricData,
            List<JournalEntry> journalEntries,
            ChartRange selectedRange,
            bool showLargeDataset)
        loaded,
    required TResult Function(
            ChartRange selectedRange,
            List<BiometricData> biometricData,
            List<JournalEntry> journalEntries,
            bool showLargeDataset)
        loading,
  }) {
    return loading(
        selectedRange, biometricData, journalEntries, showLargeDataset);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String message,
            ChartRange selectedRange,
            List<BiometricData> biometricData,
            List<JournalEntry> journalEntries,
            bool showLargeDataset)?
        error,
    TResult? Function(
            ChartRange selectedRange,
            List<BiometricData> biometricData,
            List<JournalEntry> journalEntries,
            bool showLargeDataset)?
        initial,
    TResult? Function(
            List<BiometricData> biometricData,
            List<JournalEntry> journalEntries,
            ChartRange selectedRange,
            bool showLargeDataset)?
        loaded,
    TResult? Function(
            ChartRange selectedRange,
            List<BiometricData> biometricData,
            List<JournalEntry> journalEntries,
            bool showLargeDataset)?
        loading,
  }) {
    return loading?.call(
        selectedRange, biometricData, journalEntries, showLargeDataset);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String message,
            ChartRange selectedRange,
            List<BiometricData> biometricData,
            List<JournalEntry> journalEntries,
            bool showLargeDataset)?
        error,
    TResult Function(
            ChartRange selectedRange,
            List<BiometricData> biometricData,
            List<JournalEntry> journalEntries,
            bool showLargeDataset)?
        initial,
    TResult Function(
            List<BiometricData> biometricData,
            List<JournalEntry> journalEntries,
            ChartRange selectedRange,
            bool showLargeDataset)?
        loaded,
    TResult Function(
            ChartRange selectedRange,
            List<BiometricData> biometricData,
            List<JournalEntry> journalEntries,
            bool showLargeDataset)?
        loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(
          selectedRange, biometricData, journalEntries, showLargeDataset);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Error value) error,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Error value)? error,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Loading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Error value)? error,
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements DashboardState {
  const factory _Loading(
      {required final ChartRange selectedRange,
      final List<BiometricData> biometricData,
      final List<JournalEntry> journalEntries,
      final bool showLargeDataset}) = _$LoadingImpl;

  @override
  ChartRange get selectedRange;
  @override
  List<BiometricData> get biometricData;
  @override
  List<JournalEntry> get journalEntries;
  @override
  bool get showLargeDataset;

  /// Create a copy of DashboardState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
