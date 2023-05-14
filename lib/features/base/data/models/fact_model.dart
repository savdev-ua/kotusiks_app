import 'package:freezed_annotation/freezed_annotation.dart';

part 'fact_model.freezed.dart';

part 'fact_model.g.dart';

@freezed
class FactModel with _$FactModel {
  @JsonSerializable(fieldRename: FieldRename.none, explicitToJson: true)
  const factory FactModel({
    String? fact,
    int? length,
  }) = _FactModel;

  factory FactModel.fromJson(Map<String, dynamic> json) =>
      _$FactModelFromJson(json);
}
