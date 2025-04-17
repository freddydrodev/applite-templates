import 'package:hive_ce/hive.dart';

part 'customer_model.g.dart';

@HiveType(typeId: 2)
class CustomerModel extends HiveObject {
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
  String? email;

  @HiveField(6)
  String? emailHash;

  @HiveField(7)
  String? password;

  @HiveField(8)
  String? gender;

  @HiveField(9)
  DateTime? dob;

  @HiveField(10)
  List<String> plateforms;

  @HiveField(11)
  String country;

  @HiveField(12)
  DateTime createdAt;

  @HiveField(13)
  DateTime updatedAt;

  CustomerModel({
    required this.id,
    required this.appId,
    required this.fullname,
    required this.telephone,
    this.telephoneHash,
    this.email,
    this.emailHash,
    this.password,
    this.gender,
    this.dob,
    required this.plateforms,
    required this.country,
    required this.createdAt,
    required this.updatedAt,
  });

  factory CustomerModel.fromJson(Map<String, dynamic> json) {
    return CustomerModel(
      id: json['id'] as String,
      appId: json['appId'] as String,
      fullname: json['fullname'] as String,
      telephone: json['telephone'] as String,
      telephoneHash: json['telephoneHash'] as String?,
      email: json['email'] as String?,
      emailHash: json['emailHash'] as String?,
      password: json['password'] as String?,
      gender: json['gender'] as String?,
      dob: json['dob'] != null ? DateTime.parse(json['dob'] as String) : null,
      plateforms: (json['plateforms'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      country: json['country'] as String,
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
      'gender': gender,
      'dob': dob?.toIso8601String(),
      'plateforms': plateforms,
      'country': country,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }
}
