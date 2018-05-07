import 'package:json_annotation/json_annotation.dart';

/// This allows our `User` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'CustomerTransaction.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable()

/// Every json_serializable class must have the serializer mixin.
/// It makes the generated toJson() method to be usable for the class.
/// The mixin's name follows the source class, in this case, User.
class CustomerTransaction extends Object with _$CustomerTransactionSerializerMixin {
  //CustomerTransaction(this.ID, this.CustomerID,this.TrnDate,this.Description,this.DrAmount,this.CrAmount,this.BalanceAmount,this.TrnType,this.AUser,this.Terminal,this.TrnLogID);
  CustomerTransaction(this.Description,this.DrAmount,this.CrAmount,this.BalanceAmount,this.AUser,this.Terminal);
  //String ID;
  //String CustomerID;
  //String TrnDate;
  String Description;
  double DrAmount;
  double CrAmount;
  double BalanceAmount;
  //String TrnType;
  String AUser;
  String Terminal;
  //String TrnLogID;

  /// A necessary factory constructor for creating a new User instance
  /// from a map. We pass the map to the generated _$UserFromJson constructor.
  /// The constructor is named after the source class, in this case User.
  factory CustomerTransaction.fromJson(Map<String, dynamic> json) => _$CustomerTransactionFromJson(json);
}