import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'payload_model.freezed.dart';
part 'payload_model.g.dart';

@freezed
class PayloadModel with _$PayloadModel {
  @HiveType(typeId: 0, adapterName: 'PayloadModelAdapter')
  factory PayloadModel({
    @JsonKey(name: 'id', required: true, disallowNullValue: true)
    @HiveField(0)
        required int id,
    @HiveField(1) required String username,
  }) = _PayloadModel;
  factory PayloadModel.fromJson(Map<String, dynamic> json) =>
      _$PayloadModelFromJson(json);
}
