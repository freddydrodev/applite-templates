import 'package:hive_ce/hive.dart';

part 'store_product_variant_model.g.dart';

@HiveType(typeId: 18)
class StoreProductVariantModel extends HiveObject {
  @HiveField(0)
  String id;

  @HiveField(1)
  String productId;

  @HiveField(2)
  String? sku;

  @HiveField(3)
  double price;

  @HiveField(4)
  double? discountPrice;

  @HiveField(5)
  double? compareAtPrice;

  @HiveField(6)
  double? costPerItem;

  @HiveField(7)
  bool isDefault;

  @HiveField(8)
  int quantity;

  @HiveField(9)
  int lowStockAlert;

  @HiveField(10)
  double? weight;

  @HiveField(11)
  String? weightUnit;

  @HiveField(12)
  Map<String, double>? dimensions;

  @HiveField(13)
  bool infinite;

  @HiveField(14)
  double rating;

  @HiveField(15)
  DateTime createdAt;

  @HiveField(16)
  DateTime updatedAt;

  @HiveField(17)
  String sellerId;

  @HiveField(18)
  String appId;

  StoreProductVariantModel({
    required this.id,
    required this.productId,
    this.sku,
    required this.price,
    this.discountPrice,
    this.compareAtPrice,
    this.costPerItem,
    required this.isDefault,
    required this.quantity,
    required this.lowStockAlert,
    this.weight,
    this.weightUnit,
    this.dimensions,
    required this.infinite,
    required this.rating,
    required this.createdAt,
    required this.updatedAt,
    required this.sellerId,
    required this.appId,
  });

  factory StoreProductVariantModel.fromJson(Map<String, dynamic> json) {
    return StoreProductVariantModel(
      id: json['id'] as String,
      productId: json['productId'] as String,
      sku: json['sku'] as String?,
      price: (json['price'] as num).toDouble(),
      discountPrice: json['discountPrice'] != null
          ? (json['discountPrice'] as num).toDouble()
          : null,
      compareAtPrice: json['compareAtPrice'] != null
          ? (json['compareAtPrice'] as num).toDouble()
          : null,
      costPerItem: json['costPerItem'] != null
          ? (json['costPerItem'] as num).toDouble()
          : null,
      isDefault: json['isDefault'] as bool,
      quantity: json['quantity'] as int,
      lowStockAlert: json['lowStockAlert'] as int,
      weight:
          json['weight'] != null ? (json['weight'] as num).toDouble() : null,
      weightUnit: json['weightUnit'] as String?,
      dimensions: json['dimensions'] != null
          ? Map<String, double>.from(json['dimensions'] as Map)
          : null,
      infinite: json['infinite'] as bool,
      rating: (json['rating'] as num).toDouble(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      sellerId: json['sellerId'] as String,
      appId: json['appId'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'productId': productId,
      'sku': sku,
      'price': price,
      'discountPrice': discountPrice,
      'compareAtPrice': compareAtPrice,
      'costPerItem': costPerItem,
      'isDefault': isDefault,
      'quantity': quantity,
      'lowStockAlert': lowStockAlert,
      'weight': weight,
      'weightUnit': weightUnit,
      'dimensions': dimensions,
      'infinite': infinite,
      'rating': rating,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
      'sellerId': sellerId,
      'appId': appId,
    };
  }
}
