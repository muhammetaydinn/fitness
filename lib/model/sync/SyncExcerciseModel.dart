// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class SyncExcerciseModel {
  int? setCount = 0;
  int? reps = 0;
  int? weightDuration = 0;
  int? movementId = 0;
  SyncExcerciseModel({
    this.setCount,
    this.reps,
    this.weightDuration,
    this.movementId,
  });

  SyncExcerciseModel copyWith({
    int? setCount,
    int? reps,
    int? weightDuration,
    int? movementId,
  }) {
    return SyncExcerciseModel(
      setCount: setCount ?? this.setCount,
      reps: reps ?? this.reps,
      weightDuration: weightDuration ?? this.weightDuration,
      movementId: movementId ?? this.movementId,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'setCount': setCount,
      'reps': reps,
      'weightDuration': weightDuration,
      'movementId': movementId,
    };
  }

  factory SyncExcerciseModel.fromMap(Map<String, dynamic> map) {
    return SyncExcerciseModel(
      setCount: map['setCount'] != null ? map['setCount'] as int : null,
      reps: map['reps'] != null ? map['reps'] as int : null,
      weightDuration:
          map['weightDuration'] != null ? map['weightDuration'] as int : null,
      movementId: map['movementId'] != null ? map['movementId'] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory SyncExcerciseModel.fromJson(String source) =>
      SyncExcerciseModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'SyncExcerciseModel(setCount: $setCount, reps: $reps, weightDuration: $weightDuration, movementId: $movementId)';
  }

  @override
  bool operator ==(covariant SyncExcerciseModel other) {
    if (identical(this, other)) return true;

    return other.setCount == setCount &&
        other.reps == reps &&
        other.weightDuration == weightDuration &&
        other.movementId == movementId;
  }

  @override
  int get hashCode {
    return setCount.hashCode ^
        reps.hashCode ^
        weightDuration.hashCode ^
        movementId.hashCode;
  }
}
