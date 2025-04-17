import 'package:hive_ce/hive.dart';

part 'store_seller_model.g.dart';

@HiveType(typeId: 10)
class StoreSellerModel extends HiveObject {
  @HiveField(0)
  String id;

  @HiveField(1)
  String appId;

  @HiveField(2)
  String fullname;

  @HiveField(3)
  String telephone;

  @HiveField(4)
  String? telephoneHash;

  @HiveField(5)
  String email;

  @HiveField(6)
  String? emailHash;

  @HiveField(7)
  String? password;

  @HiveField(8)
  String? avatar;

  @HiveField(9)
  String country;

  @HiveField(10)
  bool isDefault;

  @HiveField(11)
  String? description;

  @HiveField(12)
  String? address;

  @HiveField(13)
  String status;

  @HiveField(14)
  DateTime createdAt;

  @HiveField(15)
  DateTime updatedAt;

  StoreSellerModel({
    required this.id,
    required this.appId,
    required this.fullname,
    required this.telephone,
    this.telephoneHash,
    required this.email,
    this.emailHash,
    this.password,
    this.avatar,
    required this.country,
    required this.isDefault,
    this.description,
    this.address,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  factory StoreSellerModel.fromJson(Map<String, dynamic> json) {
    return StoreSellerModel(
      id: json['id'] as String,
      appId: json['appId'] as String,
      fullname: json['fullname'] as String,
      telephone: json['telephone'] as String,
      telephoneHash: json['telephoneHash'] as String?,
      email: json['email'] as String,
      emailHash: json['emailHash'] as String?,
      password: json['password'] as String?,
      avatar: json['avatar'] as String?,
      country: json['country'] as String,
      isDefault: json['isDefault'] as bool,
      description: json['description'] as String?,
      address: json['address'] as String?,
      status: json['status'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'appId': appId,
      'fullname': fullname,
      'telephone': telephone,
      'telephoneHash': telephoneHash,
      'email': email,
      'emailHash': emailHash,
      'password': password,
      'avatar': avatar,
      'country': country,
      'isDefault': isDefault,
      'description': description,
      'address': address,
      'status': status,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }
}
