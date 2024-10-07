import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:potter_hub/core/data/remote/response/character_response.dart';

part 'character_summary.freezed.dart';

@freezed
class CharacterSummary with _$CharacterSummary {
  const factory CharacterSummary({
    required String id,
    required String name,
    required String species,
    required String gender,
    required String house,
    required String age,
    required String image,
    required bool hogwartsStudent,
    required bool hogwartsStaff
  }) = _CharacterSummary;

  factory CharacterSummary.fromResponse(CharacterResponse response) {
    DateTime now = DateTime.now();
    int currentYear = now.year;
    return CharacterSummary(
        id: response.id ?? "",
        name: response.name ?? "",
        species: response.species ?? "",
        gender: response.gender ?? "",
        house: response.house ?? "",
        age: "${currentYear - (response.yearOfBirth ?? 0)} Years Old",
        image: response.image ?? "",
        hogwartsStudent: response.hogwartsStudent ?? false,
        hogwartsStaff: response.hogwartsStaff ?? false
    );
  }
}
