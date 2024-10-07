// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wand_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WandResponse _$WandResponseFromJson(Map<String, dynamic> json) {
  return _WandResponse.fromJson(json);
}

/// @nodoc
mixin _$WandResponse {
  String? get wood => throw _privateConstructorUsedError;
  String? get core => throw _privateConstructorUsedError;
  num? get length => throw _privateConstructorUsedError;

  /// Serializes this WandResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WandResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WandResponseCopyWith<WandResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WandResponseCopyWith<$Res> {
  factory $WandResponseCopyWith(
          WandResponse value, $Res Function(WandResponse) then) =
      _$WandResponseCopyWithImpl<$Res, WandResponse>;
  @useResult
  $Res call({String? wood, String? core, num? length});
}

/// @nodoc
class _$WandResponseCopyWithImpl<$Res, $Val extends WandResponse>
    implements $WandResponseCopyWith<$Res> {
  _$WandResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WandResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wood = freezed,
    Object? core = freezed,
    Object? length = freezed,
  }) {
    return _then(_value.copyWith(
      wood: freezed == wood
          ? _value.wood
          : wood // ignore: cast_nullable_to_non_nullable
              as String?,
      core: freezed == core
          ? _value.core
          : core // ignore: cast_nullable_to_non_nullable
              as String?,
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WandResponseImplCopyWith<$Res>
    implements $WandResponseCopyWith<$Res> {
  factory _$$WandResponseImplCopyWith(
          _$WandResponseImpl value, $Res Function(_$WandResponseImpl) then) =
      __$$WandResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? wood, String? core, num? length});
}

/// @nodoc
class __$$WandResponseImplCopyWithImpl<$Res>
    extends _$WandResponseCopyWithImpl<$Res, _$WandResponseImpl>
    implements _$$WandResponseImplCopyWith<$Res> {
  __$$WandResponseImplCopyWithImpl(
      _$WandResponseImpl _value, $Res Function(_$WandResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of WandResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wood = freezed,
    Object? core = freezed,
    Object? length = freezed,
  }) {
    return _then(_$WandResponseImpl(
      wood: freezed == wood
          ? _value.wood
          : wood // ignore: cast_nullable_to_non_nullable
              as String?,
      core: freezed == core
          ? _value.core
          : core // ignore: cast_nullable_to_non_nullable
              as String?,
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WandResponseImpl implements _WandResponse {
  const _$WandResponseImpl({this.wood, this.core, this.length});

  factory _$WandResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$WandResponseImplFromJson(json);

  @override
  final String? wood;
  @override
  final String? core;
  @override
  final num? length;

  @override
  String toString() {
    return 'WandResponse(wood: $wood, core: $core, length: $length)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WandResponseImpl &&
            (identical(other.wood, wood) || other.wood == wood) &&
            (identical(other.core, core) || other.core == core) &&
            (identical(other.length, length) || other.length == length));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, wood, core, length);

  /// Create a copy of WandResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WandResponseImplCopyWith<_$WandResponseImpl> get copyWith =>
      __$$WandResponseImplCopyWithImpl<_$WandResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WandResponseImplToJson(
      this,
    );
  }
}

abstract class _WandResponse implements WandResponse {
  const factory _WandResponse(
      {final String? wood,
      final String? core,
      final num? length}) = _$WandResponseImpl;

  factory _WandResponse.fromJson(Map<String, dynamic> json) =
      _$WandResponseImpl.fromJson;

  @override
  String? get wood;
  @override
  String? get core;
  @override
  num? get length;

  /// Create a copy of WandResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WandResponseImplCopyWith<_$WandResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
