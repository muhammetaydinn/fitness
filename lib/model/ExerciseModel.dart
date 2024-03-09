// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:fitness/model/MovementModel.dart';

class ExcerciseModel {
  int? set;
  int? reps;
  int? weightDuration;
  int? movementId;
  ExcerciseModel({
    this.set,
    this.reps,
    this.weightDuration,
    this.movementId,
  });

  ExcerciseModel copyWith({
    int? set,
    int? reps,
    int? weightDuration,
    int? movementId,
  }) {
    return ExcerciseModel(
      set: set ?? this.set,
      reps: reps ?? this.reps,
      weightDuration: weightDuration ?? this.weightDuration,
      movementId: movementId ?? this.movementId,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'set': set,
      'reps': reps,
      'weightDuration': weightDuration,
      'movementId': movementId,
    };
  }

  factory ExcerciseModel.fromMap(Map<String, dynamic> map) {
    return ExcerciseModel(
      set: map['set'] != null ? map['set'] as int : null,
      reps: map['reps'] != null ? map['reps'] as int : null,
      weightDuration: map['weightDuration'] != null ? map['weightDuration'] as int : null,
      movementId: map['movementId'] != null ? map['movementId'] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ExcerciseModel.fromJson(String source) => ExcerciseModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ExcerciseModel(set: $set, reps: $reps, weightDuration: $weightDuration, movementId: $movementId)';
  }

  @override
  bool operator ==(covariant ExcerciseModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.set == set &&
      other.reps == reps &&
      other.weightDuration == weightDuration &&
      other.movementId == movementId;
  }

  @override
  int get hashCode {
    return set.hashCode ^
      reps.hashCode ^
      weightDuration.hashCode ^
      movementId.hashCode;
  }
}

