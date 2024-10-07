import 'package:potter_hub/core/data/mechanism/result.dart';
import 'package:potter_hub/core/data/remote/response/character_response.dart';
import 'characters_service.dart';

class CharactersRemoteSource {
  final CharactersService service;
  CharactersRemoteSource({required this.service});

  Future<Result<List<CharacterResponse>>> getCharacters() async {
    final result = await getResult(
      () async => await service.getCharacters()
    );

    return result;
  }
}
