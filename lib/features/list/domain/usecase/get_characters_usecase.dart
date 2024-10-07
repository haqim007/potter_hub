import 'package:get/get.dart';
import 'package:potter_hub/core/data/mechanism/resource.dart';
import 'package:potter_hub/features/list/domain/characters_repository.dart';
import 'package:potter_hub/features/list/domain/model/character_summary.dart';

class GetCharactersUseCase {
  final CharactersRepository _repository = Get.find();

  Rx<Resource<List<CharacterSummary>>> invoke() {
    return _repository.getCharacters();
  }
}
