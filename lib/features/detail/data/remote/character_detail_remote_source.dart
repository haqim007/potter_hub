import 'package:potter_hub/core/data/mechanism/result.dart';
import 'package:potter_hub/core/data/remote/response/character_response.dart';

import 'character_detail_service.dart';


class CharacterDetailRemoteSource {
  final CharacterDetailService service;
  CharacterDetailRemoteSource({required this.service});

  Future<Result<List<CharacterResponse>>> getCharacter(String id) async {
    final result = await getResult(
            () async => await service.getCharacter(id)
    );

    return result;
  }
}
