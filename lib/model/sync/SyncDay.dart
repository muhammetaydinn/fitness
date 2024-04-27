import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'SyncExcerciseModel.dart';

class SyncDay {
  String? name;
  List<SyncExcerciseModel>? exercises;
  SyncDay({
    this.name,
    this.exercises,
  });

  SyncDay copyWith({
    String? name,
    List<SyncExcerciseModel>? exercises,
  }) {
    return SyncDay(
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

  factory SyncDay.fromMap(Map<String, dynamic> map) {
    return SyncDay(
      name: map['name'] != null ? map['name'] as String : null,
      exercises: map['exercises'] != null
          ? List<SyncExcerciseModel>.from(
              (map['exercises'] as List<dynamic>).map<SyncExcerciseModel?>(
                (x) => SyncExcerciseModel.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory SyncDay.fromJson(String source) =>
      SyncDay.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'SyncDay(name: $name, exercises: $exercises)';

  @override
  bool operator ==(covariant SyncDay other) {
    if (identical(this, other)) return true;

    return other.name == name && listEquals(other.exercises, exercises);
  }

  @override
  int get hashCode => name.hashCode ^ exercises.hashCode;
}
