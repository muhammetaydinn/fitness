// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class RegisterResponseModel {
  String? accessToken;
  String? refreshToken;
  RegisterResponseModel({
    this.accessToken,
    this.refreshToken,
  });

 

  RegisterResponseModel copyWith({
    String? accessToken,
    String? refreshToken,
  }) {
    return RegisterResponseModel(
      accessToken: accessToken ?? this.accessToken,
      refreshToken: refreshToken ?? this.refreshToken,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': accessToken,
      'refreshToken': refreshToken,
    };
  }

  factory RegisterResponseModel.fromMap(Map<String, dynamic> map) {
    return RegisterResponseModel(
      accessToken: map['accessToken'] != null ? map['accessToken'] as String : null,
      refreshToken: map['refreshToken'] != null ? map['refreshToken'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory RegisterResponseModel.fromJson(String source) => RegisterResponseModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'RegisterResponseModel(accessToken: $accessToken, refreshToken: $refreshToken)';

  @override
  bool operator ==(covariant RegisterResponseModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.accessToken == accessToken &&
      other.refreshToken == refreshToken;
  }

  @override
  int get hashCode => accessToken.hashCode ^ refreshToken.hashCode;
}
