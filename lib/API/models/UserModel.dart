class UserModel {
  final int id;
  final String username;
  final String email;
  final String firstName;
  final String lastName;
  final String gender;
  final String image;
  final String token;

  const UserModel(
      {required this.id,
      required this.username,
      required this.email,
      required this.firstName,
      required this.lastName,
      required this.gender,
      required this.image,
      required this.token});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
        email: json["email"],
        firstName: json["firstName"],
        gender: json["gender"],
        id: json["id"],
        image: json["image"],
        lastName: json["lastName"],
        token: json["token"],
        username: json["username"]);
  }
}
