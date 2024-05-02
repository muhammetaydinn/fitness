// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class LoginResponseModel {
  /*
  {
    "access_token": "JWT",
    "refresh_token": "JWT",
    "email": "TEST@gmail.com",
    "first_name": "TEST",
    "last_name": "NAME",
    "user_id": 4
}
*/
  String access_token;
  String refresh_token;
  String email;
  String first_name;
  String last_name;
  int user_id;

  LoginResponseModel({
    required this.access_token,
    required this.refresh_token,
    required this.email,
    required this.first_name,
    required this.last_name,
    required this.user_id,
  });

  LoginResponseModel copyWith({
    String? access_token,
    String? refresh_token,
    String? email,
    String? first_name,
    String? last_name,
    int? user_id,
  }) {
    return LoginResponseModel(
      access_token: access_token ?? this.access_token,
      refresh_token: refresh_token ?? this.refresh_token,
      email: email ?? this.email,
      first_name: first_name ?? this.first_name,
      last_name: last_name ?? this.last_name,
      user_id: user_id ?? this.user_id,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access_token': access_token,
      'refresh_token': refresh_token,
      'email': email,
      'first_name': first_name,
      'last_name': last_name,
      'user_id': user_id,
    };
  }

  factory LoginResponseModel.fromMap(Map<String, dynamic> map) {
    return LoginResponseModel(
      access_token: map['access_token'] as String,
      refresh_token: map['refresh_token'] as String,
      email: map['email'] as String,
      first_name: map['first_name'] as String,
      last_name: map['last_name'] as String,
      user_id: map['user_id'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory LoginResponseModel.fromJson(String source) =>
      LoginResponseModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'LoginResponseModel(access_token: $access_token, refresh_token: $refresh_token, email: $email, first_name: $first_name, last_name: $last_name, user_id: $user_id)';
  }

  @override
  bool operator ==(covariant LoginResponseModel other) {
    if (identical(this, other)) return true;

    return other.access_token == access_token &&
        other.refresh_token == refresh_token &&
        other.email == email &&
        other.first_name == first_name &&
        other.last_name == last_name &&
        other.user_id == user_id;
  }

  @override
  int get hashCode {
    return access_token.hashCode ^
        refresh_token.hashCode ^
        email.hashCode ^
        first_name.hashCode ^
        last_name.hashCode ^
        user_id.hashCode;
  }
}
