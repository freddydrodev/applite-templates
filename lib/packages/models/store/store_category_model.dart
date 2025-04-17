import 'package:hive_ce/hive.dart';

part 'store_category_model.g.dart';

@HiveType(typeId: 11)
class StoreCategoryModel extends HiveObject {
  @HiveField(0)
  String id;

  @HiveField(1)
  String appId;

  @HiveField(2)
  String? image;

  @HiveField(3)
  String name;

  @HiveField(4)
  String? description;

  @HiveField(5)
  String slug;

  @HiveField(6)
  String sellerId;

  @HiveField(7)
  String? parentId;

  @HiveField(8)
  bool isActive;

  @HiveField(9)
  int sortOrder;

  @HiveField(10)
  DateTime createdAt;

  @HiveField(11)
  DateTime updatedAt;

  StoreCategoryModel({
    required this.id,
    required this.appId,
    this.image,
    required this.name,
    this.description,
    required this.slug,
    required this.sellerId,
    this.parentId,
    required this.isActive,
    required this.sortOrder,
    required this.createdAt,
    required this.updatedAt,
  });

  factory StoreCategoryModel.fromJson(Map<String, dynamic> json) {
    return StoreCategoryModel(
      id: json['id'] as String,
      appId: json['appId'] as String,
      image: json['image'] as String?,
      name: json['name'] as String,
      description: json['description'] as String?,
      slug: json['slug'] as String,
      sellerId: json['sellerId'] as String,
      parentId: json['parentId'] as String?,
      isActive: json['isActive'] as bool,
      sortOrder: json['sortOrder'] as int,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'appId': appId,
      'image': image,
      'name': name,
      'description': description,
      'slug': slug,
      'sellerId': sellerId,
      'parentId': parentId,
      'isActive': isActive,
      'sortOrder': sortOrder,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }
}
