import 'package:hive_ce/hive.dart';

part 'app_model.g.dart';

@HiveType(typeId: 1)
class AppModel extends HiveObject {
  @HiveField(0)
  String id;

  @HiveField(1)
  String name;

  @HiveField(2)
  String slug;

  @HiveField(3)
  String? description;

  @HiveField(4)
  String apiKey;

  @HiveField(5)
  DateTime createdAt;

  @HiveField(6)
  DateTime updatedAt;

  @HiveField(7)
  String ownerId;

  @HiveField(8)
  String planId;

  AppModel({
    required this.id,
    required this.name,
    required this.slug,
    this.description,
    required this.apiKey,
    required this.createdAt,
    required this.updatedAt,
    required this.ownerId,
    required this.planId,
  });

  factory AppModel.fromJson(Map<String, dynamic> json) {
    return AppModel(
      id: json['id'] as String,
      name: json['name'] as String,
      slug: json['slug'] as String,
      description: json['description'] as String?,
      apiKey: json['apiKey'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      ownerId: json['ownerId'] as String,
      planId: json['planId'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'slug': slug,
      'description': description,
      'apiKey': apiKey,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
      'ownerId': ownerId,
      'planId': planId,
    };
  }
}
