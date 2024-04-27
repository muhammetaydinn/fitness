// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class LoginResponseModel {
  String access_token;
  String refresh_token;
  LoginResponseModel({
    required this.access_token,
    required this.refresh_token,
  });

  LoginResponseModel copyWith({
    String? access_token,
    String? refresh_token,
  }) {
    return LoginResponseModel(
      access_token: access_token ?? this.access_token,
      refresh_token: refresh_token ?? this.refresh_token,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access_token': access_token,
      'refresh_token': refresh_token,
    };
  }

  factory LoginResponseModel.fromMap(Map<String, dynamic> map) {
    return LoginResponseModel(
      access_token: map['access_token'] as String,
      refresh_token: map['refresh_token'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory LoginResponseModel.fromJson(String source) =>
      LoginResponseModel.fromMap(
          json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'RegisterModelResponse(access_token: $access_token, refresh_token: $refresh_token)';

  @override
  bool operator ==(covariant LoginResponseModel other) {
    if (identical(this, other)) return true;

    return other.access_token == access_token &&
        other.refresh_token == refresh_token;
  }

  @override
  int get hashCode => access_token.hashCode ^ refresh_token.hashCode;
}
