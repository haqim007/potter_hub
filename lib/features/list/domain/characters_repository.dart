import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:potter_hub/features/list/domain/model/character_summary.dart';
import 'package:potter_hub/core/data/mechanism/resource.dart';

abstract class CharactersRepository {
  Rx<Resource<List<CharacterSummary>>> getCharacters();
}
