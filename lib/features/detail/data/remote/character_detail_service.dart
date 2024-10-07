import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import 'package:potter_hub/core/data/remote/response/character_response.dart';
import 'package:potter_hub/core/util/app_constant.dart';

part 'character_detail_service.g.dart';

@RestApi(baseUrl: baseURL)
abstract class CharacterDetailService {

  factory CharacterDetailService(Dio dio, {String baseUrl}) = _CharacterDetailService;

  factory CharacterDetailService.from(Dio dio) => CharacterDetailService(dio);

  @GET('character/{characterId}')
  Future<List<CharacterResponse>> getCharacter(@Path("characterId") String characterId);
}
