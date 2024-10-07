import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:potter_hub/core/data/remote/response/character_response.dart';

part 'characters_response.freezed.dart';
part 'characters_response.g.dart';

@freezed
class CharactersResponse with _$CharactersResponse {
  const factory CharactersResponse({
    List<CharacterResponse>? characters
  }) = _CharactersResponse;

  factory CharactersResponse.fromJson(dynamic json) => _$CharactersResponseFromJson(json);

}
