
class UserEntity {
  final String status;
  final String name;
  final String job;
  final int age;

  UserEntity({
    required this.status,
    required this.name,
    required this.job,
    required this.age,
  });

  static UserEntity empty() =>
      UserEntity(age: 0, job: "", name: "", status: "");

  factory UserEntity.frowJson(Map<String, dynamic> json) => UserEntity(
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
