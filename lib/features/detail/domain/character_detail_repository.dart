import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:potter_hub/core/data/mechanism/resource.dart';
import 'package:potter_hub/features/detail/domain/model/character_detail.dart';

abstract class CharacterDetailRepository {
  Rx<Resource<CharacterDetail>> getCharacter(String id);
}
