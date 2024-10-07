import 'package:dio/dio.dart';
import 'package:potter_hub/core/data/remote/response/characters_response.dart';
import 'package:potter_hub/core/util/app_constant.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:potter_hub/core/data/remote/response/character_response.dart';

part 'characters_service.g.dart';

@RestApi(baseUrl: baseURL)
abstract class CharactersService {

  factory CharactersService(Dio dio, {String baseUrl}) = _CharactersService;

  factory CharactersService.from(Dio dio) => CharactersService(dio);

  @GET('characters')
  Future<List<CharacterResponse>> getCharacters();
}
