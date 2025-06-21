// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

BaseResponse _$BaseResponseFromJson(Map<String, dynamic> json) {
  return _BaseResponse.fromJson(json);
}

/// @nodoc
mixin _$BaseResponse {
  /// Indicates whether the API request was successful.
  bool get success => throw _privateConstructorUsedError;

  /// A message associated with the API response, typically used for conveying status or error information.
  String? get message => throw _privateConstructorUsedError;

  /// The data payload received from the API response.
  dynamic get data => throw _privateConstructorUsedError;

  /// The HTTP status code of the API response.
  int get status => throw _privateConstructorUsedError;

  /// Serializes this BaseResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseCopyWith<BaseResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseCopyWith<$Res> {
  factory $BaseResponseCopyWith(
    BaseResponse value,
    $Res Function(BaseResponse) then,
  ) = _$BaseResponseCopyWithImpl<$Res, BaseResponse>;
  @useResult
  $Res call({bool success, String? message, dynamic data, int status});
}

/// @nodoc
class _$BaseResponseCopyWithImpl<$Res, $Val extends BaseResponse>
    implements $BaseResponseCopyWith<$Res> {
  _$BaseResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = freezed,
    Object? data = freezed,
    Object? status = null,
  }) {
    return _then(
      _value.copyWith(
            success:
                null == success
                    ? _value.success
                    : success // ignore: cast_nullable_to_non_nullable
                        as bool,
            message:
                freezed == message
                    ? _value.message
                    : message // ignore: cast_nullable_to_non_nullable
                        as String?,
            data:
                freezed == data
                    ? _value.data
                    : data // ignore: cast_nullable_to_non_nullable
                        as dynamic,
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BaseResponseImplCopyWith<$Res>
    implements $BaseResponseCopyWith<$Res> {
  factory _$$BaseResponseImplCopyWith(
    _$BaseResponseImpl value,
    $Res Function(_$BaseResponseImpl) then,
  ) = __$$BaseResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String? message, dynamic data, int status});
}

/// @nodoc
class __$$BaseResponseImplCopyWithImpl<$Res>
    extends _$BaseResponseCopyWithImpl<$Res, _$BaseResponseImpl>
    implements _$$BaseResponseImplCopyWith<$Res> {
  __$$BaseResponseImplCopyWithImpl(
    _$BaseResponseImpl _value,
    $Res Function(_$BaseResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = freezed,
    Object? data = freezed,
    Object? status = null,
  }) {
    return _then(
      _$BaseResponseImpl(
        success:
            null == success
                ? _value.success
                : success // ignore: cast_nullable_to_non_nullable
                    as bool,
        message:
            freezed == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String?,
        data:
            freezed == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                    as dynamic,
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$BaseResponseImpl implements _BaseResponse {
  const _$BaseResponseImpl({
    this.success = false,
    this.message,
    this.data,
    required this.status,
  });

  factory _$BaseResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BaseResponseImplFromJson(json);

  /// Indicates whether the API request was successful.
  @override
  @JsonKey()
  final bool success;

  /// A message associated with the API response, typically used for conveying status or error information.
  @override
  final String? message;

  /// The data payload received from the API response.
  @override
  final dynamic data;

  /// The HTTP status code of the API response.
  @override
  final int status;

  @override
  String toString() {
    return 'BaseResponse(success: $success, message: $message, data: $data, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    success,
    message,
    const DeepCollectionEquality().hash(data),
    status,
  );

  /// Create a copy of BaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseImplCopyWith<_$BaseResponseImpl> get copyWith =>
      __$$BaseResponseImplCopyWithImpl<_$BaseResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseImplToJson(this);
  }
}

abstract class _BaseResponse implements BaseResponse {
  const factory _BaseResponse({
    final bool success,
    final String? message,
    final dynamic data,
    required final int status,
  }) = _$BaseResponseImpl;

  factory _BaseResponse.fromJson(Map<String, dynamic> json) =
      _$BaseResponseImpl.fromJson;

  /// Indicates whether the API request was successful.
  @override
  bool get success;

  /// A message associated with the API response, typically used for conveying status or error information.
  @override
  String? get message;

  /// The data payload received from the API response.
  @override
  dynamic get data;

  /// The HTTP status code of the API response.
  @override
  int get status;

  /// Create a copy of BaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseImplCopyWith<_$BaseResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
