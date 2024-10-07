import 'package:get/get.dart';
import 'package:potter_hub/core/data/mechanism/resource.dart';
import 'package:potter_hub/features/detail/domain/model/character_detail.dart';

import 'character_detail_repository.dart';

class GetCharacterDetailUseCase {
  final CharacterDetailRepository _repository = Get.find();

  Rx<Resource<CharacterDetail>> invoke(String id) {
    return _repository.getCharacter(id);
  }
}
