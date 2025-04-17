import 'package:hive_ce/hive.dart';

part 'stock_product_image_model.g.dart';

@HiveType(typeId: 16)
class StockProductImageModel extends HiveObject {
  @HiveField(0)
  String id;

  @HiveField(1)
  String url;

  @HiveField(2)
  String? providerId;

  @HiveField(3)
  String variantId;

  @HiveField(4)
  String sellerId;

  @HiveField(5)
  String appId;

  StockProductImageModel({
    required this.id,
    required this.url,
    this.providerId,
    required this.variantId,
    required this.sellerId,
    required this.appId,
  });

  factory StockProductImageModel.fromJson(Map<String, dynamic> json) {
    return StockProductImageModel(
      id: json['id'] as String,
      url: json['url'] as String,
      providerId: json['providerId'] as String?,
      variantId: json['variantId'] as String,
      sellerId: json['sellerId'] as String,
      appId: json['appId'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'url': url,
      'providerId': providerId,
      'variantId': variantId,
      'sellerId': sellerId,
      'appId': appId,
    };
  }
}
