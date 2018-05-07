// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CardDataModel.dart';

// **************************************************************************
// Generator: JsonSerializableGenerator
// **************************************************************************

CardDataModel _$CardDataModelFromJson(Map<String, dynamic> json) =>
    new CardDataModel(
        json['iconPath'] as String,
        json['headerTitle'] as String,
        json['subTitle'] as String,
        json['miniData1'] as String,
        json['miniData2'] as String,
        json['miniData3'] as String);

abstract class _$CardDataModelSerializerMixin {
  String get iconPath;
  String get headerTitle;
  String get subTitle;
  String get miniData1;
  String get miniData2;
  String get miniData3;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'iconPath': iconPath,
        'headerTitle': headerTitle,
        'subTitle': subTitle,
        'miniData1': miniData1,
        'miniData2': miniData2,
        'miniData3': miniData3
      };
}
