import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:potter_hub/core/data/remote/response/wand_response.dart';

part 'character_response.freezed.dart';
part 'character_response.g.dart';

@freezed
class CharacterResponse with _$CharacterResponse {
  const factory CharacterResponse({
      String? id,
      String? name,
      List<String>? alternateNames,
      String? species,
      String? gender,
      String? house,
      String? dateOfBirth,
      num? yearOfBirth,
      bool? wizard,
      String? ancestry,
      String? eyeColour,
      String? hairColour,
      WandResponse? wand,
      String? patronus,
      bool? hogwartsStudent,
      bool? hogwartsStaff,
      String? actor,
      List<dynamic>? alternateActors,
      bool? alive,
      String? image}) = _CharacterResponse;

  factory CharacterResponse.fromJson(dynamic json) => _$CharacterResponseFromJson(json);

}
