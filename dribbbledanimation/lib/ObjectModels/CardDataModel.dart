import 'package:json_annotation/json_annotation.dart';

/// This allows our `CardDataModel` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'CardDataModel.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable()

/// Every json_serializable class must have the serializer mixin.
/// It makes the generated toJson() method to be usable for the class.
/// The mixin's name follows the source class, in this case, User.
class CardDataModel extends Object with _$CardDataModelSerializerMixin {

  CardDataModel(this.iconPath,this.headerTitle,this.subTitle,this.miniData1,this.miniData2,this.miniData3);
  String iconPath;
  String headerTitle;
  String subTitle;
  String miniData1;
  String miniData2;
  String miniData3;

  /// A necessary factory constructor for creating a new CardDataModel instance
  /// from a map. We pass the map to the generated _$CardDataModelFromJson constructor.
  /// The constructor is named after the source class, in this case User.
  factory CardDataModel.fromJson(Map<String, dynamic> json) => _$CardDataModelFromJson(json);
}