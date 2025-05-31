// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:fitness/model/ExerciseModel.dart';

class Day {
  String? name;
  List<ExcerciseModel>? exercises;
  Day({
    this.name,
    this.exercises,
  });

  Day copyWith({
    String? name,
    List<ExcerciseModel>? exercises,
  }) {
    return Day(
      name: name ?? this.name,
      exercises: exercises ?? this.exercises,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'exercises': exercises?.map((x) => x.toMap()).toList(),
    };
  }

  factory Day.fromMap(Map<String, dynamic> map) {
    return Day(
      name: map['name'] != null ? map['name'] as String : null,
      exercises: map['exercises'] != null
          ? List<ExcerciseModel>.from(
              (map['exercises'] as List<dynamic>).map<ExcerciseModel?>(
                (x) => ExcerciseModel.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Day.fromJson(String source) =>
      Day.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Day(name: $name, exercises: $exercises)';

  @override
  bool operator ==(covariant Day other) {
    if (identical(this, other)) return true;

    return other.name == name && listEquals(other.exercises, exercises);
  }

  @override
  int get hashCode => name.hashCode ^ exercises.hashCode;
}
