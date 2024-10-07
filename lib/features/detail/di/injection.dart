import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:potter_hub/features/detail/data/character_detail_repository_impl.dart';
import 'package:potter_hub/features/detail/data/remote/character_detail_remote_source.dart';
import 'package:potter_hub/features/detail/data/remote/character_detail_service.dart';
import 'package:potter_hub/features/detail/domain/character_detail_repository.dart';


void configureDetailDependencies(){
  Get.put(CharacterDetailService(Dio()), permanent: true);
  Get.put(CharacterDetailRemoteSource(service: Get.find()));

  // TODO: Try to use Bindings
  Get.lazyPut<CharacterDetailRepository>(
    () => CharacterDetailRepositoryImpl(Get.find()), fenix: true
  );
}
