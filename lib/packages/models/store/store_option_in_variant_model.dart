import 'package:hive_ce/hive.dart';

part 'store_option_in_variant_model.g.dart';

@HiveType(typeId: 15)
class StoreOptionInVariantModel extends HiveObject {
  @HiveField(0)
  String id;

  @HiveField(1)
  String valueId;

  @HiveField(2)
  String variantId;

  @HiveField(3)
  DateTime createdAt;

  @HiveField(4)
  DateTime updatedAt;

  @HiveField(5)
  String sellerId;

  @HiveField(6)
  String appId;

  StoreOptionInVariantModel({
    required this.id,
    required this.valueId,
    required this.variantId,
    required this.createdAt,
    required this.updatedAt,
    required this.sellerId,
    required this.appId,
  });

  factory StoreOptionInVariantModel.fromJson(Map<String, dynamic> json) {
    return StoreOptionInVariantModel(
      id: json['id'] as String,
      valueId: json['valueId'] as String,
      variantId: json['variantId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      sellerId: json['sellerId'] as String,
      appId: json['appId'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'valueId': valueId,
      'variantId': variantId,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
      'sellerId': sellerId,
      'appId': appId,
    };
  }
}
