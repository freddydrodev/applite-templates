import 'package:hive_ce/hive.dart';

part 'store_product_model.g.dart';

@HiveType(typeId: 17)
class StoreProductModel extends HiveObject {
  @HiveField(0)
  String id;

  @HiveField(1)
  String name;

  @HiveField(2)
  String? description;

  @HiveField(3)
  String slug;

  @HiveField(4)
  String? sku;

  @HiveField(5)
  String appId;

  @HiveField(6)
  String sellerId;

  @HiveField(7)
  String? badgeId;

  @HiveField(8)
  String categoryId;

  @HiveField(9)
  bool isActive;

  @HiveField(10)
  bool isFeatured;

  @HiveField(11)
  double rating;

  @HiveField(12)
  int reviewCount;

  @HiveField(13)
  DateTime createdAt;

  @HiveField(14)
  DateTime updatedAt;

  StoreProductModel({
    required this.id,
    required this.name,
    this.description,
    required this.slug,
    this.sku,
    required this.appId,
    required this.sellerId,
    this.badgeId,
    required this.categoryId,
    required this.isActive,
    required this.isFeatured,
    required this.rating,
    required this.reviewCount,
    required this.createdAt,
    required this.updatedAt,
  });

  factory StoreProductModel.fromJson(Map<String, dynamic> json) {
    return StoreProductModel(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      slug: json['slug'] as String,
      sku: json['sku'] as String?,
      appId: json['appId'] as String,
      sellerId: json['sellerId'] as String,
      badgeId: json['badgeId'] as String?,
      categoryId: json['categoryId'] as String,
      isActive: json['isActive'] as bool,
      isFeatured: json['isFeatured'] as bool,
      rating: (json['rating'] as num).toDouble(),
      reviewCount: json['reviewCount'] as int,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'slug': slug,
      'sku': sku,
      'appId': appId,
      'sellerId': sellerId,
      'badgeId': badgeId,
      'categoryId': categoryId,
      'isActive': isActive,
      'isFeatured': isFeatured,
      'rating': rating,
      'reviewCount': reviewCount,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }
}
