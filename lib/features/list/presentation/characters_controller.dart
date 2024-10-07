import 'dart:async';

import 'package:get/get.dart';
import 'package:potter_hub/core/data/mechanism/resource.dart';
import 'package:potter_hub/core/util/app_constant.dart';
import 'package:potter_hub/features/list/domain/model/character_summary.dart';
import 'package:potter_hub/features/list/domain/usecase/get_characters_usecase.dart';


enum CharacterFilter { staff, student }

extension CharacterFilterName on CharacterFilter {
  String get name {
    switch (this) {
      case CharacterFilter.staff:
        return 'Staff Members'; // Custom name for staff
      case CharacterFilter.student:
        return 'Students'; // Custom name for student
      default:
        return ''; // Fallback (not usually needed)
    }
  }
}

class CharactersController extends GetxController {
  final GetCharactersUseCase _getCharactersUseCase = Get.find();
  List<CharacterSummary> _charactersData = [];
  var characters = Rx<Resource<List<CharacterSummary>>>(Resource.loading());
  var filters = Rx<List<CharacterFilter>>([]);
  final searchStreamController = StreamController<String>();

  @override
  void onInit() {
    super.onInit();
    searchStreamController.stream.listen((keyword) {
      _searchCharacters(keyword);
    });
    filters.listen((filterValue){
      _filterCharacters(filterValue);
    });
  }

  void fetchCharacters() {
    _getCharactersUseCase.invoke().listen((event) {
      characters.value = event;
      _charactersData = event.data ?? [];
    });
  }

  Future<void> search(String keyword) async {
    searchStreamController.add(keyword);
  }

  void _searchCharacters(String keyword) {
    characters.value = Resource.loading();
    try {
      if(keyword.isEmpty) {
        characters.value = Resource.success(_charactersData);
        return;
      }
      final filteredData = _charactersData.where((data) {
        return data.name.toLowerCase().contains(keyword.toLowerCase());
      }).toList();
      characters.value = Resource.success(filteredData);
    } catch (e) {
      logger.e("_searchCharacters $e");
      characters.value = Resource.error(message: "Error filtering data: $e");
    }
  }

  void toggleFilter(CharacterFilter filter) {
    if (filters.value.contains(filter)) {
      filters.value.remove(filter);
      filters.refresh();
    } else {
      filters.value.add(filter);
      filters.refresh();
    }
  }

  bool isActiveFilter(CharacterFilter filter) {
    return filters.value.contains(filter);
  }

  void _filterCharacters(List<CharacterFilter> filtersValue) {
    characters.value = Resource.loading();
    try {
      if(filtersValue.isEmpty) {
        characters.value = Resource.success(_charactersData);
        return;
      }
      final filteredData = _charactersData.where((data) {
        return data.hogwartsStaff == filtersValue.contains(CharacterFilter.staff) ||
            data.hogwartsStudent == filtersValue.contains(CharacterFilter.student);
      }).toList();
      characters.value = Resource.success(filteredData);
    } catch (e) {
      logger.e("_filterCharacters $e");
      characters.value = Resource.error(message: "Error filtering data: $e");
    }
  }
}
