import 'package:get/get.dart';
import 'package:potter_hub/core/data/mechanism/resource.dart';
import 'package:potter_hub/features/list/data/remote/characters_network_resource.dart';
import 'package:potter_hub/features/list/data/remote/characters_remote_source.dart';
import 'package:potter_hub/features/list/domain/characters_repository.dart';
import 'package:potter_hub/features/list/domain/model/character_summary.dart';

class CharactersRepositoryImpl extends CharactersRepository {
  final CharactersRemoteSource remoteSource;
  CharactersRepositoryImpl(this.remoteSource);

  @override
  Rx<Resource<List<CharacterSummary>>> getCharacters() {
    final resource = CharactersNetworkResource(remoteSource: remoteSource);
    return resource.asObservable();
  }
}
