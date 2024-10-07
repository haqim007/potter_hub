import 'package:potter_hub/core/data/mechanism/network_bound_resource.dart';
import 'package:potter_hub/core/data/mechanism/result.dart';
import 'package:potter_hub/core/data/remote/response/character_response.dart';

import 'package:potter_hub/features/detail/domain/model/character_detail.dart';
import 'character_detail_remote_source.dart';


class CharacterDetailNetworkResource extends
  NetworkBoundResource<CharacterDetail, List<CharacterResponse>> {
  final CharacterDetailRemoteSource remoteSource;
  final String id;

  CharacterDetailNetworkResource({required this.remoteSource, required this.id}) : super();

  @override
  Future<CharacterDetail> loadResult(List<CharacterResponse> responseData) async {
    return CharacterDetail.fromResponse(responseData[0]);
  }

  @override
  Future<Result<List<CharacterResponse>>> requestFromRemote() {
    return remoteSource.getCharacter(id);
  }

}
