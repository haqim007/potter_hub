import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:potter_hub/core/util/app_theme.dart';
import 'package:potter_hub/features/detail/di/injection.dart';
import 'package:potter_hub/features/detail/domain/get_character_detail_usecase.dart';
import 'package:potter_hub/features/list/domain/usecase/get_characters_usecase.dart';
import 'package:potter_hub/features/list/presentation/characters_controller.dart';
import 'package:potter_hub/features/list/presentation/characters_screen.dart';

import 'features/detail/presentation/character_detail_controller.dart';
import 'features/detail/presentation/character_detail_screen.dart';
import 'features/list/di/injection.dart';
import 'features/list/domain/usecase/filter_character_usecase.dart';


void main() {
  configureListDependencies();
  configureDetailDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: Get.isDarkMode ? AppTheme.darkTheme: AppTheme.lightTheme,
      initialRoute: "/",
      getPages: [
        GetPage(
          name: "/",
          page: () => CharactersScreen(),
          binding: BindingsBuilder((){
            Get.lazyPut<GetCharactersUseCase>(() => GetCharactersUseCase());
            Get.lazyPut<FilterCharacterUseCase>(() => FilterCharacterUseCase());
            Get.lazyPut<CharactersController>(() => CharactersController());
          })
        ),
        GetPage(
          name: "/detail",
          page: () => CharacterDetailScreen(),
          transition: Transition.circularReveal,
          binding: BindingsBuilder((){
            Get.lazyPut<GetCharacterDetailUseCase>(() => GetCharacterDetailUseCase());
            Get.lazyPut<CharacterDetailController>(() => CharacterDetailController());
          })
        )
      ],
    );
  }
}



