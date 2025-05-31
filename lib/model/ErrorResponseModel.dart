// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ErrorResponseModel {
  String message;
  int status;
  int timeStamp;
  ErrorResponseModel({
    required this.message,
    required this.status,
    required this.timeStamp,
  });

  ErrorResponseModel copyWith({
    String? message,
    int? status,
    int? timeStamp,
  }) {
    return ErrorResponseModel(
      message: message ?? this.message,
      status: status ?? this.status,
      timeStamp: timeStamp ?? this.timeStamp,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': message,
      'status': status,
      'timeStamp': timeStamp,
    };
  }

  factory ErrorResponseModel.fromMap(Map<String, dynamic> map) {
    return ErrorResponseModel(
      message: map['message'] as String,
      status: map['status'] as int,
      timeStamp: map['timeStamp'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory ErrorResponseModel.fromJson(String source) =>
      ErrorResponseModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'ErrorResponseModel(message: $message, status: $status, timeStamp: $timeStamp)';

  @override
  bool operator ==(covariant ErrorResponseModel other) {
    if (identical(this, other)) return true;

    return other.message == message &&
        other.status == status &&
        other.timeStamp == timeStamp;
  }

  @override
  int get hashCode => message.hashCode ^ status.hashCode ^ timeStamp.hashCode;
}
