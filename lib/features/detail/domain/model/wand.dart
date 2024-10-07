import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:potter_hub/core/data/remote/response/wand_response.dart';

part 'wand.freezed.dart';

@freezed
class Wand with _$Wand {
  const factory Wand({
    required String wood,
    required String core,
    required num length}) = _Wand;

  factory Wand.fromResponse(WandResponse response) {
    return Wand(
      wood: response.wood ?? "",
      core: response.core ?? "",
      length: response.length ?? 0
    );
  }

}
