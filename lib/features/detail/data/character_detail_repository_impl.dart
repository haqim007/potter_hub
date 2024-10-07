import 'package:get/get.dart';
import 'package:potter_hub/core/data/mechanism/resource.dart';
import 'package:potter_hub/features/detail/data/remote/character_detail_network_resource.dart';
import 'package:potter_hub/features/detail/data/remote/character_detail_remote_source.dart';
import 'package:potter_hub/features/detail/domain/model/character_detail.dart';

import '../domain/character_detail_repository.dart';

class CharacterDetailRepositoryImpl extends CharacterDetailRepository {
  final CharacterDetailRemoteSource remoteSource;
  CharacterDetailRepositoryImpl(this.remoteSource);

  @override
  Rx<Resource<CharacterDetail>> getCharacter(String id) {
    final resource = CharacterDetailNetworkResource(
        id: id,
        remoteSource: remoteSource
    );
    return resource.asObservable();
  }
}
