// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'characters_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CharactersResponseImpl _$$CharactersResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CharactersResponseImpl(
      characters: (json['characters'] as List<dynamic>?)
          ?.map(CharacterResponse.fromJson)
          .toList(),
    );

Map<String, dynamic> _$$CharactersResponseImplToJson(
        _$CharactersResponseImpl instance) =>
    <String, dynamic>{
      'characters': instance.characters,
    };
