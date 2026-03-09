class UserModel {
  String token;

  UserModel({
    this.token = '',
  });

  // fromJson constructor
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      token: json['token'] ?? '',
    );
  }

  // toJson method
  Map<String, dynamic> toJson() {
    return {
      'token': token,
    };
  }
}
