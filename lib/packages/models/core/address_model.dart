import 'package:hive_ce/hive.dart';

part 'address_model.g.dart';

@HiveType(typeId: 3)
class AddressModel extends HiveObject {
  @HiveField(0)
  String id;

  @HiveField(1)
  String appId;

  @HiveField(2)
  String customerId;

  @HiveField(3)
  String name;

  @HiveField(4)
  String address;

  @HiveField(5)
  double longitude;

  @HiveField(6)
  double latitude;

  @HiveField(7)
  String city;

  @HiveField(8)
  String country;

  @HiveField(9)
  DateTime createdAt;

  @HiveField(10)
  DateTime updatedAt;

  AddressModel({
    required this.id,
    required this.appId,
    required this.customerId,
    required this.name,
    required this.address,
    required this.longitude,
    required this.latitude,
    required this.city,
    required this.country,
    required this.createdAt,
    required this.updatedAt,
  });

  factory AddressModel.fromJson(Map<String, dynamic> json) {
    return AddressModel(
      id: json['id'] as String,
      appId: json['appId'] as String,
      customerId: json['customerId'] as String,
      name: json['name'] as String,
      address: json['address'] as String,
      longitude: (json['longitude'] as num).toDouble(),
      latitude: (json['latitude'] as num).toDouble(),
      city: json['city'] as String,
      country: json['country'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'appId': appId,
      'customerId': customerId,
      'name': name,
      'address': address,
      'longitude': longitude,
      'latitude': latitude,
      'city': city,
      'country': country,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }
}
