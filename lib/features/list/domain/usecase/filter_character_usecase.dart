import 'package:potter_hub/features/list/presentation/characters_controller.dart';
import 'package:potter_hub/features/list/domain/model/character_summary.dart';

class FilterCharacterUseCase {

  List<CharacterSummary> invoke(List<CharacterSummary> characters, List<CharacterFilter> filtersValue) {
    if(filtersValue.isEmpty) {
      return characters;
    } else {
      final filteredData = characters.where((data) {
        return data.hogwartsStaff == filtersValue.contains(CharacterFilter.staff) ||
            data.hogwartsStudent == filtersValue.contains(CharacterFilter.student);
      }).toList();
      return filteredData;
    }
  }
}
