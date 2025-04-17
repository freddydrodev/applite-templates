import 'package:hive_ce/hive.dart';

class HiveModel extends HiveObject {
  HiveModel({required this.name, required this.age});

  String name;
  int age;
}
