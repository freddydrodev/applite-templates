import 'package:hive_ce/hive.dart';

part 'store_product_review_model.g.dart';

@HiveType(typeId: 19)
class StoreProductReviewModel extends HiveObject {
  @HiveField(0)
  String id;

  @HiveField(1)
  String productId;

  @HiveField(2)
  String customerId;

  @HiveField(3)
  double rating;

  @HiveField(4)
  String? title;

  @HiveField(5)
  String? comment;

  @HiveField(6)
  List<String> images;

  @HiveField(7)
  bool isVerified;

  @HiveField(8)
  DateTime createdAt;

  @HiveField(9)
  DateTime updatedAt;

  @HiveField(10)
  String? variantId;

  @HiveField(11)
  String sellerId;

  @HiveField(12)
  String appId;

  StoreProductReviewModel({
    required this.id,
    required this.productId,
    required this.customerId,
    required this.rating,
    this.title,
    this.comment,
    required this.images,
    required this.isVerified,
    required this.createdAt,
    required this.updatedAt,
    this.variantId,
    required this.sellerId,
    required this.appId,
  });

  factory StoreProductReviewModel.fromJson(Map<String, dynamic> json) {
    return StoreProductReviewModel(
      id: json['id'] as String,
      productId: json['productId'] as String,
      customerId: json['customerId'] as String,
      rating: (json['rating'] as num).toDouble(),
      title: json['title'] as String?,
      comment: json['comment'] as String?,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      isVerified: json['isVerified'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      variantId: json['variantId'] as String?,
      sellerId: json['sellerId'] as String,
      appId: json['appId'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'productId': productId,
      'customerId': customerId,
      'rating': rating,
      'title': title,
      'comment': comment,
      'images': images,
      'isVerified': isVerified,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
      'variantId': variantId,
      'sellerId': sellerId,
      'appId': appId,
    };
  }
}
