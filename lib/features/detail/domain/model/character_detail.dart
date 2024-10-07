import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:potter_hub/core/data/remote/response/character_response.dart';
import 'package:potter_hub/features/detail/domain/model/wand.dart';

part 'character_detail.freezed.dart';

@freezed
class CharacterDetail with _$CharacterDetail {
  const factory CharacterDetail({
      required String id,
      required String name,
      required List<String> alternateNames,
      required String species,
      required String gender,
      required String house,
      required String dateOfBirth,
      required num yearOfBirth,
      required bool wizard,
      required String ancestry,
      required String eyeColour,
      required String hairColour,
      Wand? wand,
      required String patronus,
      required bool hogwartsStudent,
      required bool hogwartsStaff,
      required String actor,
      required List<dynamic> alternateActors,
      required bool alive,
      required String image}) = _CharacterDetail;

  factory CharacterDetail.fromResponse(CharacterResponse response) {
      DateTime now = DateTime.now();
      int currentYear = now.year;
      return CharacterDetail(
          id: response.id ?? "",
          name: response.name ?? "",
          species: response.species ?? "",
          gender: response.gender ?? "",
          house: response.house ?? "",
          image: response.image ?? "",
          hogwartsStudent: response.hogwartsStudent ?? false,
          hogwartsStaff: response.hogwartsStaff ?? false,
          actor: response.actor ?? "",
          alternateActors: response.alternateActors ?? [],
          alive: response.alive ?? false,
          alternateNames: response.alternateNames ?? [],
          yearOfBirth: response.yearOfBirth ?? currentYear,
          dateOfBirth: response.dateOfBirth ?? "",
          eyeColour: response.eyeColour ?? "",
          hairColour: response.hairColour ?? "",
          patronus: response.patronus ?? "",
          wand: response.wand != null ? Wand.fromResponse(response.wand!) : null,
          wizard: response.wizard ?? false,
          ancestry: response.ancestry ?? "",
      );
  }

}
