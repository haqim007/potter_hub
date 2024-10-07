// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'characters_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CharactersResponse _$CharactersResponseFromJson(Map<String, dynamic> json) {
  return _CharactersResponse.fromJson(json);
}

/// @nodoc
mixin _$CharactersResponse {
  List<CharacterResponse>? get characters => throw _privateConstructorUsedError;

  /// Serializes this CharactersResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CharactersResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CharactersResponseCopyWith<CharactersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharactersResponseCopyWith<$Res> {
  factory $CharactersResponseCopyWith(
          CharactersResponse value, $Res Function(CharactersResponse) then) =
      _$CharactersResponseCopyWithImpl<$Res, CharactersResponse>;
  @useResult
  $Res call({List<CharacterResponse>? characters});
}

/// @nodoc
class _$CharactersResponseCopyWithImpl<$Res, $Val extends CharactersResponse>
    implements $CharactersResponseCopyWith<$Res> {
  _$CharactersResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CharactersResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characters = freezed,
  }) {
    return _then(_value.copyWith(
      characters: freezed == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<CharacterResponse>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CharactersResponseImplCopyWith<$Res>
    implements $CharactersResponseCopyWith<$Res> {
  factory _$$CharactersResponseImplCopyWith(_$CharactersResponseImpl value,
          $Res Function(_$CharactersResponseImpl) then) =
      __$$CharactersResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CharacterResponse>? characters});
}

/// @nodoc
class __$$CharactersResponseImplCopyWithImpl<$Res>
    extends _$CharactersResponseCopyWithImpl<$Res, _$CharactersResponseImpl>
    implements _$$CharactersResponseImplCopyWith<$Res> {
  __$$CharactersResponseImplCopyWithImpl(_$CharactersResponseImpl _value,
      $Res Function(_$CharactersResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of CharactersResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characters = freezed,
  }) {
    return _then(_$CharactersResponseImpl(
      characters: freezed == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<CharacterResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CharactersResponseImpl implements _CharactersResponse {
  const _$CharactersResponseImpl({final List<CharacterResponse>? characters})
      : _characters = characters;

  factory _$CharactersResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CharactersResponseImplFromJson(json);

  final List<CharacterResponse>? _characters;
  @override
  List<CharacterResponse>? get characters {
    final value = _characters;
    if (value == null) return null;
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CharactersResponse(characters: $characters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharactersResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_characters));

  /// Create a copy of CharactersResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CharactersResponseImplCopyWith<_$CharactersResponseImpl> get copyWith =>
      __$$CharactersResponseImplCopyWithImpl<_$CharactersResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CharactersResponseImplToJson(
      this,
    );
  }
}

abstract class _CharactersResponse implements CharactersResponse {
  const factory _CharactersResponse(
      {final List<CharacterResponse>? characters}) = _$CharactersResponseImpl;

  factory _CharactersResponse.fromJson(Map<String, dynamic> json) =
      _$CharactersResponseImpl.fromJson;

  @override
  List<CharacterResponse>? get characters;

  /// Create a copy of CharactersResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CharactersResponseImplCopyWith<_$CharactersResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
