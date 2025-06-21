// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$HomeState {
  List<BoxModel> get boxes => throw _privateConstructorUsedError;
  List<int> get tapOrder => throw _privateConstructorUsedError;
  bool get allGreen => throw _privateConstructorUsedError;
  bool get isReversing => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({
    List<BoxModel> boxes,
    List<int> tapOrder,
    bool allGreen,
    bool isReversing,
    String? errorMessage,
  });
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boxes = null,
    Object? tapOrder = null,
    Object? allGreen = null,
    Object? isReversing = null,
    Object? errorMessage = freezed,
  }) {
    return _then(
      _value.copyWith(
            boxes:
                null == boxes
                    ? _value.boxes
                    : boxes // ignore: cast_nullable_to_non_nullable
                        as List<BoxModel>,
            tapOrder:
                null == tapOrder
                    ? _value.tapOrder
                    : tapOrder // ignore: cast_nullable_to_non_nullable
                        as List<int>,
            allGreen:
                null == allGreen
                    ? _value.allGreen
                    : allGreen // ignore: cast_nullable_to_non_nullable
                        as bool,
            isReversing:
                null == isReversing
                    ? _value.isReversing
                    : isReversing // ignore: cast_nullable_to_non_nullable
                        as bool,
            errorMessage:
                freezed == errorMessage
                    ? _value.errorMessage
                    : errorMessage // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
    _$HomeStateImpl value,
    $Res Function(_$HomeStateImpl) then,
  ) = __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<BoxModel> boxes,
    List<int> tapOrder,
    bool allGreen,
    bool isReversing,
    String? errorMessage,
  });
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
    _$HomeStateImpl _value,
    $Res Function(_$HomeStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boxes = null,
    Object? tapOrder = null,
    Object? allGreen = null,
    Object? isReversing = null,
    Object? errorMessage = freezed,
  }) {
    return _then(
      _$HomeStateImpl(
        boxes:
            null == boxes
                ? _value._boxes
                : boxes // ignore: cast_nullable_to_non_nullable
                    as List<BoxModel>,
        tapOrder:
            null == tapOrder
                ? _value._tapOrder
                : tapOrder // ignore: cast_nullable_to_non_nullable
                    as List<int>,
        allGreen:
            null == allGreen
                ? _value.allGreen
                : allGreen // ignore: cast_nullable_to_non_nullable
                    as bool,
        isReversing:
            null == isReversing
                ? _value.isReversing
                : isReversing // ignore: cast_nullable_to_non_nullable
                    as bool,
        errorMessage:
            freezed == errorMessage
                ? _value.errorMessage
                : errorMessage // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl({
    final List<BoxModel> boxes = const [],
    final List<int> tapOrder = const [],
    this.allGreen = false,
    this.isReversing = false,
    this.errorMessage,
  }) : _boxes = boxes,
       _tapOrder = tapOrder;

  final List<BoxModel> _boxes;
  @override
  @JsonKey()
  List<BoxModel> get boxes {
    if (_boxes is EqualUnmodifiableListView) return _boxes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_boxes);
  }

  final List<int> _tapOrder;
  @override
  @JsonKey()
  List<int> get tapOrder {
    if (_tapOrder is EqualUnmodifiableListView) return _tapOrder;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tapOrder);
  }

  @override
  @JsonKey()
  final bool allGreen;
  @override
  @JsonKey()
  final bool isReversing;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'HomeState(boxes: $boxes, tapOrder: $tapOrder, allGreen: $allGreen, isReversing: $isReversing, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            const DeepCollectionEquality().equals(other._boxes, _boxes) &&
            const DeepCollectionEquality().equals(other._tapOrder, _tapOrder) &&
            (identical(other.allGreen, allGreen) ||
                other.allGreen == allGreen) &&
            (identical(other.isReversing, isReversing) ||
                other.isReversing == isReversing) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_boxes),
    const DeepCollectionEquality().hash(_tapOrder),
    allGreen,
    isReversing,
    errorMessage,
  );

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState({
    final List<BoxModel> boxes,
    final List<int> tapOrder,
    final bool allGreen,
    final bool isReversing,
    final String? errorMessage,
  }) = _$HomeStateImpl;

  @override
  List<BoxModel> get boxes;
  @override
  List<int> get tapOrder;
  @override
  bool get allGreen;
  @override
  bool get isReversing;
  @override
  String? get errorMessage;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
