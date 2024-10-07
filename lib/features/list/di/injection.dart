import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:potter_hub/features/list/data/remote/characters_remote_source.dart';
import 'package:potter_hub/features/list/domain/characters_repository.dart';

import '../data/characters_repository_impl.dart';
import '../data/remote/characters_service.dart';

void configureListDependencies(){
  Get.put(CharactersService(Dio()), permanent: true);
  Get.put(CharactersRemoteSource(service: Get.find()));

  // TODO: Try to use Bindings
  Get.lazyPut<CharactersRepository>(
    () => CharactersRepositoryImpl(Get.find()), fenix: true
  );
}
