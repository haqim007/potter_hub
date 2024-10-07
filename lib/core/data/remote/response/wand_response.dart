import 'package:freezed_annotation/freezed_annotation.dart';

part 'wand_response.freezed.dart';
part 'wand_response.g.dart';

@freezed
class WandResponse with _$WandResponse {
  const factory WandResponse({
    String? wood,
    String? core,
    num? length,}) = _WandResponse;

  factory WandResponse.fromJson(dynamic json) => _$WandResponseFromJson(json);

}
