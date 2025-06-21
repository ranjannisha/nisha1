// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'localization_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$LocalizationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Locale selectedLanguage) onChanged,
    required TResult Function() getLanguage,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Locale selectedLanguage)? onChanged,
    TResult? Function()? getLanguage,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Locale selectedLanguage)? onChanged,
    TResult Function()? getLanguage,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnChanged value) onChanged,
    required TResult Function(_GetLanguage value) getLanguage,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnChanged value)? onChanged,
    TResult? Function(_GetLanguage value)? getLanguage,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnChanged value)? onChanged,
    TResult Function(_GetLanguage value)? getLanguage,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalizationEventCopyWith<$Res> {
  factory $LocalizationEventCopyWith(
    LocalizationEvent value,
    $Res Function(LocalizationEvent) then,
  ) = _$LocalizationEventCopyWithImpl<$Res, LocalizationEvent>;
}

/// @nodoc
class _$LocalizationEventCopyWithImpl<$Res, $Val extends LocalizationEvent>
    implements $LocalizationEventCopyWith<$Res> {
  _$LocalizationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocalizationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$OnChangedImplCopyWith<$Res> {
  factory _$$OnChangedImplCopyWith(
    _$OnChangedImpl value,
    $Res Function(_$OnChangedImpl) then,
  ) = __$$OnChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Locale selectedLanguage});
}

/// @nodoc
class __$$OnChangedImplCopyWithImpl<$Res>
    extends _$LocalizationEventCopyWithImpl<$Res, _$OnChangedImpl>
    implements _$$OnChangedImplCopyWith<$Res> {
  __$$OnChangedImplCopyWithImpl(
    _$OnChangedImpl _value,
    $Res Function(_$OnChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocalizationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? selectedLanguage = null}) {
    return _then(
      _$OnChangedImpl(
        selectedLanguage:
            null == selectedLanguage
                ? _value.selectedLanguage
                : selectedLanguage // ignore: cast_nullable_to_non_nullable
                    as Locale,
      ),
    );
  }
}

/// @nodoc

class _$OnChangedImpl implements _OnChanged {
  const _$OnChangedImpl({required this.selectedLanguage});

  @override
  final Locale selectedLanguage;

  @override
  String toString() {
    return 'LocalizationEvent.onChanged(selectedLanguage: $selectedLanguage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnChangedImpl &&
            (identical(other.selectedLanguage, selectedLanguage) ||
                other.selectedLanguage == selectedLanguage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedLanguage);

  /// Create a copy of LocalizationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnChangedImplCopyWith<_$OnChangedImpl> get copyWith =>
      __$$OnChangedImplCopyWithImpl<_$OnChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Locale selectedLanguage) onChanged,
    required TResult Function() getLanguage,
  }) {
    return onChanged(selectedLanguage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Locale selectedLanguage)? onChanged,
    TResult? Function()? getLanguage,
  }) {
    return onChanged?.call(selectedLanguage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Locale selectedLanguage)? onChanged,
    TResult Function()? getLanguage,
    required TResult orElse(),
  }) {
    if (onChanged != null) {
      return onChanged(selectedLanguage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnChanged value) onChanged,
    required TResult Function(_GetLanguage value) getLanguage,
  }) {
    return onChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnChanged value)? onChanged,
    TResult? Function(_GetLanguage value)? getLanguage,
  }) {
    return onChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnChanged value)? onChanged,
    TResult Function(_GetLanguage value)? getLanguage,
    required TResult orElse(),
  }) {
    if (onChanged != null) {
      return onChanged(this);
    }
    return orElse();
  }
}

abstract class _OnChanged implements LocalizationEvent {
  const factory _OnChanged({required final Locale selectedLanguage}) =
      _$OnChangedImpl;

  Locale get selectedLanguage;

  /// Create a copy of LocalizationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnChangedImplCopyWith<_$OnChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetLanguageImplCopyWith<$Res> {
  factory _$$GetLanguageImplCopyWith(
    _$GetLanguageImpl value,
    $Res Function(_$GetLanguageImpl) then,
  ) = __$$GetLanguageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetLanguageImplCopyWithImpl<$Res>
    extends _$LocalizationEventCopyWithImpl<$Res, _$GetLanguageImpl>
    implements _$$GetLanguageImplCopyWith<$Res> {
  __$$GetLanguageImplCopyWithImpl(
    _$GetLanguageImpl _value,
    $Res Function(_$GetLanguageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocalizationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetLanguageImpl implements _GetLanguage {
  const _$GetLanguageImpl();

  @override
  String toString() {
    return 'LocalizationEvent.getLanguage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetLanguageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Locale selectedLanguage) onChanged,
    required TResult Function() getLanguage,
  }) {
    return getLanguage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Locale selectedLanguage)? onChanged,
    TResult? Function()? getLanguage,
  }) {
    return getLanguage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Locale selectedLanguage)? onChanged,
    TResult Function()? getLanguage,
    required TResult orElse(),
  }) {
    if (getLanguage != null) {
      return getLanguage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnChanged value) onChanged,
    required TResult Function(_GetLanguage value) getLanguage,
  }) {
    return getLanguage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnChanged value)? onChanged,
    TResult? Function(_GetLanguage value)? getLanguage,
  }) {
    return getLanguage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnChanged value)? onChanged,
    TResult Function(_GetLanguage value)? getLanguage,
    required TResult orElse(),
  }) {
    if (getLanguage != null) {
      return getLanguage(this);
    }
    return orElse();
  }
}

abstract class _GetLanguage implements LocalizationEvent {
  const factory _GetLanguage() = _$GetLanguageImpl;
}

/// @nodoc
mixin _$LocalizationState {
  Locale get selectedLanguage => throw _privateConstructorUsedError;

  /// Create a copy of LocalizationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocalizationStateCopyWith<LocalizationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalizationStateCopyWith<$Res> {
  factory $LocalizationStateCopyWith(
    LocalizationState value,
    $Res Function(LocalizationState) then,
  ) = _$LocalizationStateCopyWithImpl<$Res, LocalizationState>;
  @useResult
  $Res call({Locale selectedLanguage});
}

/// @nodoc
class _$LocalizationStateCopyWithImpl<$Res, $Val extends LocalizationState>
    implements $LocalizationStateCopyWith<$Res> {
  _$LocalizationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocalizationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? selectedLanguage = null}) {
    return _then(
      _value.copyWith(
            selectedLanguage:
                null == selectedLanguage
                    ? _value.selectedLanguage
                    : selectedLanguage // ignore: cast_nullable_to_non_nullable
                        as Locale,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LocalizationStateImplCopyWith<$Res>
    implements $LocalizationStateCopyWith<$Res> {
  factory _$$LocalizationStateImplCopyWith(
    _$LocalizationStateImpl value,
    $Res Function(_$LocalizationStateImpl) then,
  ) = __$$LocalizationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Locale selectedLanguage});
}

/// @nodoc
class __$$LocalizationStateImplCopyWithImpl<$Res>
    extends _$LocalizationStateCopyWithImpl<$Res, _$LocalizationStateImpl>
    implements _$$LocalizationStateImplCopyWith<$Res> {
  __$$LocalizationStateImplCopyWithImpl(
    _$LocalizationStateImpl _value,
    $Res Function(_$LocalizationStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocalizationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? selectedLanguage = null}) {
    return _then(
      _$LocalizationStateImpl(
        selectedLanguage:
            null == selectedLanguage
                ? _value.selectedLanguage
                : selectedLanguage // ignore: cast_nullable_to_non_nullable
                    as Locale,
      ),
    );
  }
}

/// @nodoc

class _$LocalizationStateImpl implements _LocalizationState {
  const _$LocalizationStateImpl({required this.selectedLanguage});

  @override
  final Locale selectedLanguage;

  @override
  String toString() {
    return 'LocalizationState(selectedLanguage: $selectedLanguage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalizationStateImpl &&
            (identical(other.selectedLanguage, selectedLanguage) ||
                other.selectedLanguage == selectedLanguage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedLanguage);

  /// Create a copy of LocalizationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalizationStateImplCopyWith<_$LocalizationStateImpl> get copyWith =>
      __$$LocalizationStateImplCopyWithImpl<_$LocalizationStateImpl>(
        this,
        _$identity,
      );
}

abstract class _LocalizationState implements LocalizationState {
  const factory _LocalizationState({required final Locale selectedLanguage}) =
      _$LocalizationStateImpl;

  @override
  Locale get selectedLanguage;

  /// Create a copy of LocalizationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocalizationStateImplCopyWith<_$LocalizationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
