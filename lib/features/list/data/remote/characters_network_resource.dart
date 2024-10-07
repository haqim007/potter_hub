import 'package:potter_hub/core/data/mechanism/network_bound_resource.dart';
import 'package:potter_hub/core/data/mechanism/result.dart';
import 'package:potter_hub/core/data/remote/response/character_response.dart';
import 'package:potter_hub/features/list/data/remote/characters_remote_source.dart';
import 'package:potter_hub/features/list/domain/model/character_summary.dart';


class CharactersNetworkResource extends
  NetworkBoundResource<List<CharacterSummary>, List<CharacterResponse>> {
  final CharactersRemoteSource remoteSource;

  CharactersNetworkResource({required this.remoteSource}) : super();

  @override
  Future<List<CharacterSummary>> loadResult(List<CharacterResponse> responseData) async {
    List<CharacterSummary> characterSummaries = responseData.map((response) {
      return CharacterSummary.fromResponse(response);
    }).toList();
    return characterSummaries;
  }

  @override
  Future<Result<List<CharacterResponse>>> requestFromRemote() {
    return remoteSource.getCharacters();
  }

}
