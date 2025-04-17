import 'package:hive_ce/hive.dart';

part 'store_option_value_model.g.dart';

@HiveType(typeId: 13)
class StoreOptionValueModel extends HiveObject {
  @HiveField(0)
  String id;

  @HiveField(1)
  String text;

  @HiveField(2)
  String? image;

  @HiveField(3)
  int sortOrder;

  @HiveField(4)
  DateTime createdAt;

  @HiveField(5)
  DateTime updatedAt;

  @HiveField(6)
  String? optionId;

  @HiveField(7)
  String? sellerId;

  @HiveField(8)
  String appId;

  StoreOptionValueModel({
    required this.id,
    required this.text,
    this.image,
    required this.sortOrder,
    required this.createdAt,
    required this.updatedAt,
    this.optionId,
    this.sellerId,
    required this.appId,
  });

  factory StoreOptionValueModel.fromJson(Map<String, dynamic> json) {
    return StoreOptionValueModel(
      id: json['id'] as String,
      text: json['text'] as String,
      image: json['image'] as String?,
      sortOrder: json['sortOrder'] as int,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      optionId: json['optionId'] as String?,
      sellerId: json['sellerId'] as String?,
      appId: json['appId'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'text': text,
      'image': image,
      'sortOrder': sortOrder,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
      'optionId': optionId,
      'sellerId': sellerId,
      'appId': appId,
    };
  }
}
