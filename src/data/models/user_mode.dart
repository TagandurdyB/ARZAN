import 'package:arzan/src/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  final String status;
  final String name;
  final String job;
  final int age;

  UserModel({
    required this.status,
    required this.name,
    required this.job,
    required this.age,
  }) : super(
          status: status,
          name: name,
          job: job,
          age: age,
        );

  factory UserModel.frowJson(Map<String, dynamic> json) => UserModel(
        status: json["status"],
        name: json["name"],
        job: json["job"],
        age: json["age"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "name": name,
        "job": job,
        "age": age,
      };
}
