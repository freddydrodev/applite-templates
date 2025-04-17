import 'package:hive_ce/hive.dart';

part 'store_badge_model.g.dart';

@HiveType(typeId: 12)
class StoreBadgeModel extends HiveObject {
  @HiveField(0)
  String id;

  @HiveField(1)
  String? image;

  @HiveField(2)
  String name;

  @HiveField(3)
  String? description;

  @HiveField(4)
  String slug;

  @HiveField(5)
  String? color;

  @HiveField(6)
  String appId;

  @HiveField(7)
  String sellerId;

  @HiveField(8)
  bool isActive;

  @HiveField(9)
  DateTime createdAt;

  @HiveField(10)
  DateTime updatedAt;

  StoreBadgeModel({
    required this.id,
    this.image,
    required this.name,
    this.description,
    required this.slug,
    this.color,
    required this.appId,
    required this.sellerId,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
  });

  factory StoreBadgeModel.fromJson(Map<String, dynamic> json) {
    return StoreBadgeModel(
      id: json['id'] as String,
      image: json['image'] as String?,
      name: json['name'] as String,
      description: json['description'] as String?,
      slug: json['slug'] as String,
      color: json['color'] as String?,
      appId: json['appId'] as String,
      sellerId: json['sellerId'] as String,
      isActive: json['isActive'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'image': image,
      'name': name,
      'description': description,
      'slug': slug,
      'color': color,
      'appId': appId,
      'sellerId': sellerId,
      'isActive': isActive,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }
}
