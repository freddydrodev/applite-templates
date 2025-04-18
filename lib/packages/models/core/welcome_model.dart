import 'package:hive_ce/hive.dart';

part 'welcome_model.g.dart';

@HiveType(typeId: 7)
class WelcomeModel {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String fileUrl;

  @HiveField(2)
  final String fileType;

  @HiveField(3)
  final String? title;

  @HiveField(4)
  final String? description;

  @HiveField(5)
  final String appId;

  @HiveField(6)
  final String plateformType;

  @HiveField(7)
  final DateTime createdAt;

  @HiveField(8)
  final DateTime updatedAt;

  WelcomeModel({
    required this.id,
    required this.fileUrl,
    required this.fileType,
    this.title,
    this.description,
    required this.appId,
    required this.plateformType,
    required this.createdAt,
    required this.updatedAt,
  });

  factory WelcomeModel.fromJson(Map<String, dynamic> json) {
    return WelcomeModel(
      id: json['id'] as String,
      fileUrl: json['fileUrl'] as String,
      fileType: json['fileType'] as String,
      title: json['title'] as String?,
      description: json['description'] as String?,
      appId: json['appId'] as String,
      plateformType: json['plateformType'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'fileUrl': fileUrl,
      'fileType': fileType,
      'title': title,
      'description': description,
      'appId': appId,
      'plateformType': plateformType,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }
}
