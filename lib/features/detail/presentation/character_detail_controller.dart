import 'package:get/get.dart';
import 'package:potter_hub/core/data/mechanism/resource.dart';
import 'package:potter_hub/features/detail/domain/get_character_detail_usecase.dart';
import 'package:potter_hub/features/detail/domain/model/character_detail.dart';

class CharacterDetailController extends GetxController {
  final GetCharacterDetailUseCase _getCharacterDetailUseCase = Get.find();
  var characterResult = Rx<Resource<CharacterDetail>>(Resource.loading());
  CharacterDetail? character;


  void fetchCharacter(String id) {
    _getCharacterDetailUseCase.invoke(id).listen((event) {
      characterResult.value = event;
      if(event.isSuccess){
        character = event.data;
      }
    });
  }
}
