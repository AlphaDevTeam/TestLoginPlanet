// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CustomerTransaction.dart';

// **************************************************************************
// Generator: JsonSerializableGenerator
// **************************************************************************

CustomerTransaction _$CustomerTransactionFromJson(Map<String, dynamic> json) =>
    new CustomerTransaction(
        json['Description'] as String,
        (json['DrAmount'] as num)?.toDouble(),
        (json['CrAmount'] as num)?.toDouble(),
        (json['BalanceAmount'] as num)?.toDouble(),
        json['AUser'] as String,
        json['Terminal'] as String);

abstract class _$CustomerTransactionSerializerMixin {
  String get Description;
  double get DrAmount;
  double get CrAmount;
  double get BalanceAmount;
  String get AUser;
  String get Terminal;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'Description': Description,
        'DrAmount': DrAmount,
        'CrAmount': CrAmount,
        'BalanceAmount': BalanceAmount,
        'AUser': AUser,
        'Terminal': Terminal
      };
}
