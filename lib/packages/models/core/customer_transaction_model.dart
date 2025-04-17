import 'package:hive_ce/hive.dart';

part 'customer_transaction_model.g.dart';

@HiveType(typeId: 4)
class CustomerTransactionModel extends HiveObject {
  @HiveField(0)
  String id;

  @HiveField(1)
  String ref;

  @HiveField(2)
  String appId;

  @HiveField(3)
  String customerId;

  @HiveField(4)
  String plateform;

  @HiveField(5)
  String status;

  @HiveField(6)
  String productId;

  @HiveField(7)
  double amount;

  @HiveField(8)
  String currency;

  @HiveField(9)
  DateTime createdAt;

  @HiveField(10)
  DateTime updatedAt;

  CustomerTransactionModel({
    required this.id,
    required this.ref,
    required this.appId,
    required this.customerId,
    required this.plateform,
    required this.status,
    required this.productId,
    required this.amount,
    required this.currency,
    required this.createdAt,
    required this.updatedAt,
  });

  factory CustomerTransactionModel.fromJson(Map<String, dynamic> json) {
    return CustomerTransactionModel(
      id: json['id'] as String,
      ref: json['ref'] as String,
      appId: json['appId'] as String,
      customerId: json['customerId'] as String,
      plateform: json['plateform'] as String,
      status: json['status'] as String,
      productId: json['productId'] as String,
      amount: (json['amount'] as num).toDouble(),
      currency: json['currency'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'ref': ref,
      'appId': appId,
      'customerId': customerId,
      'plateform': plateform,
      'status': status,
      'productId': productId,
      'amount': amount,
      'currency': currency,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }
}
