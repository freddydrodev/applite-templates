import 'package:hive_ce/hive.dart';

part 'store_option_model.g.dart';

@HiveType(typeId: 14)
class StoreOptionModel extends HiveObject {
  @HiveField(0)
  String id;

  @HiveField(1)
  String name;

  @HiveField(2)
  String? description;

  @HiveField(3)
  String type;

  @HiveField(4)
  String appId;

  @HiveField(5)
  String sellerId;

  @HiveField(6)
  bool isRequired;

  @HiveField(7)
  bool isActive;

  @HiveField(8)
  DateTime createdAt;

  @HiveField(9)
  DateTime updatedAt;

  StoreOptionModel({
    required this.id,
    required this.name,
    this.description,
    required this.type,
    required this.appId,
    required this.sellerId,
    required this.isRequired,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
  });

  factory StoreOptionModel.fromJson(Map<String, dynamic> json) {
    return StoreOptionModel(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      type: json['type'] as String,
      appId: json['appId'] as String,
      sellerId: json['sellerId'] as String,
      isRequired: json['isRequired'] as bool,
      isActive: json['isActive'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'type': type,
      'appId': appId,
      'sellerId': sellerId,
      'isRequired': isRequired,
      'isActive': isActive,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }
}
