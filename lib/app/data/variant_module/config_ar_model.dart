import 'package:get/get.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'config_ar_model.freezed.dart';
part 'config_ar_model.g.dart';

@freezed
abstract class ConfigArModel with _$ConfigArModel {
  factory ConfigArModel({
    @Default('') String urlLeftModel,
    @Default('') String urlRightModel,
  }) = _ConfigArModel;
  factory ConfigArModel.fromJson(Map<String, dynamic> json) =>
      _$ConfigArModelFromJson(json);
}
