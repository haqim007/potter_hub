// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CharacterResponseImpl _$$CharacterResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CharacterResponseImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      alternateNames: (json['alternateNames'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      species: json['species'] as String?,
      gender: json['gender'] as String?,
      house: json['house'] as String?,
      dateOfBirth: json['dateOfBirth'] as String?,
      yearOfBirth: json['yearOfBirth'] as num?,
      wizard: json['wizard'] as bool?,
      ancestry: json['ancestry'] as String?,
      eyeColour: json['eyeColour'] as String?,
      hairColour: json['hairColour'] as String?,
      wand: json['wand'] == null ? null : WandResponse.fromJson(json['wand']),
      patronus: json['patronus'] as String?,
      hogwartsStudent: json['hogwartsStudent'] as bool?,
      hogwartsStaff: json['hogwartsStaff'] as bool?,
      actor: json['actor'] as String?,
      alternateActors: json['alternateActors'] as List<dynamic>?,
      alive: json['alive'] as bool?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$CharacterResponseImplToJson(
        _$CharacterResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'alternateNames': instance.alternateNames,
      'species': instance.species,
      'gender': instance.gender,
      'house': instance.house,
      'dateOfBirth': instance.dateOfBirth,
      'yearOfBirth': instance.yearOfBirth,
      'wizard': instance.wizard,
      'ancestry': instance.ancestry,
      'eyeColour': instance.eyeColour,
      'hairColour': instance.hairColour,
      'wand': instance.wand,
      'patronus': instance.patronus,
      'hogwartsStudent': instance.hogwartsStudent,
      'hogwartsStaff': instance.hogwartsStaff,
      'actor': instance.actor,
      'alternateActors': instance.alternateActors,
      'alive': instance.alive,
      'image': instance.image,
    };
