// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wand.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Wand {
  String get wood => throw _privateConstructorUsedError;
  String get core => throw _privateConstructorUsedError;
  num get length => throw _privateConstructorUsedError;

  /// Create a copy of Wand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WandCopyWith<Wand> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WandCopyWith<$Res> {
  factory $WandCopyWith(Wand value, $Res Function(Wand) then) =
      _$WandCopyWithImpl<$Res, Wand>;
  @useResult
  $Res call({String wood, String core, num length});
}

/// @nodoc
class _$WandCopyWithImpl<$Res, $Val extends Wand>
    implements $WandCopyWith<$Res> {
  _$WandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Wand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wood = null,
    Object? core = null,
    Object? length = null,
  }) {
    return _then(_value.copyWith(
      wood: null == wood
          ? _value.wood
          : wood // ignore: cast_nullable_to_non_nullable
              as String,
      core: null == core
          ? _value.core
          : core // ignore: cast_nullable_to_non_nullable
              as String,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WandImplCopyWith<$Res> implements $WandCopyWith<$Res> {
  factory _$$WandImplCopyWith(
          _$WandImpl value, $Res Function(_$WandImpl) then) =
      __$$WandImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String wood, String core, num length});
}

/// @nodoc
class __$$WandImplCopyWithImpl<$Res>
    extends _$WandCopyWithImpl<$Res, _$WandImpl>
    implements _$$WandImplCopyWith<$Res> {
  __$$WandImplCopyWithImpl(_$WandImpl _value, $Res Function(_$WandImpl) _then)
      : super(_value, _then);

  /// Create a copy of Wand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wood = null,
    Object? core = null,
    Object? length = null,
  }) {
    return _then(_$WandImpl(
      wood: null == wood
          ? _value.wood
          : wood // ignore: cast_nullable_to_non_nullable
              as String,
      core: null == core
          ? _value.core
          : core // ignore: cast_nullable_to_non_nullable
              as String,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

class _$WandImpl implements _Wand {
  const _$WandImpl(
      {required this.wood, required this.core, required this.length});

  @override
  final String wood;
  @override
  final String core;
  @override
  final num length;

  @override
  String toString() {
    return 'Wand(wood: $wood, core: $core, length: $length)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WandImpl &&
            (identical(other.wood, wood) || other.wood == wood) &&
            (identical(other.core, core) || other.core == core) &&
            (identical(other.length, length) || other.length == length));
  }

  @override
  int get hashCode => Object.hash(runtimeType, wood, core, length);

  /// Create a copy of Wand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WandImplCopyWith<_$WandImpl> get copyWith =>
      __$$WandImplCopyWithImpl<_$WandImpl>(this, _$identity);
}

abstract class _Wand implements Wand {
  const factory _Wand(
      {required final String wood,
      required final String core,
      required final num length}) = _$WandImpl;

  @override
  String get wood;
  @override
  String get core;
  @override
  num get length;

  /// Create a copy of Wand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WandImplCopyWith<_$WandImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
