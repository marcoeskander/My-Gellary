class LoginModel {
  late String token;
  UserData? user;
  LoginModel.fromjason(Map<String, dynamic> jason) {
    token = jason['token'];
    user = jason['user'] != null ? UserData.fromjason(jason['user']) : null;
  }
}

class UserData {
  dynamic id;
  String? email;
  String? name;
  String? emailVerifiedAt;
  String? createdAt;
  String? updatedAt;

  UserData.fromjason(Map<String, dynamic> jason) {
    id = jason['id'];
    name = jason['name'];
    email = jason['email'];
    emailVerifiedAt = jason['email_verified_at'];
    createdAt = jason['created_at'];
    updatedAt = jason['updated_at'];
  }
}
