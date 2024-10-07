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

// class Wand {
//   Wand({
//     String? wood,
//     String? core,
//     num? length,}){
//     _wood = wood;
//     _core = core;
//     _length = length;
//   }
//
//   Wand.fromJson(dynamic json) {
//     _wood = json['wood'];
//     _core = json['core'];
//     _length = json['length'];
//   }
//   String? _wood;
//   String? _core;
//   num? _length;
//   Wand copyWith({  String? wood,
//     String? core,
//     num? length,
//   }) => Wand(  wood: wood ?? _wood,
//     core: core ?? _core,
//     length: length ?? _length,
//   );
//   String? get wood => _wood;
//   String? get core => _core;
//   num? get length => _length;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['wood'] = _wood;
//     map['core'] = _core;
//     map['length'] = _length;
//     return map;
//   }
//
// }
