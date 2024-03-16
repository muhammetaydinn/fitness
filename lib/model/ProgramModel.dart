// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'DayModel.dart';

class ProgramModel {
  String? name;
  List<Day>? days;
  String? dayId; //generated id for each day
  ProgramModel({
    this.name,
    this.days,
    this.dayId,
  });

  ProgramModel copyWith({
    String? name,
    List<Day>? days,
    String? dayId,
  }) {
    return ProgramModel(
      name: name ?? this.name,
      days: days ?? this.days,
      dayId: dayId ?? this.dayId,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'days': days?.map((x) => x.toMap()).toList(),
      'dayId': dayId,
    };
  }

  factory ProgramModel.fromMap(Map<String, dynamic> map) {
    return ProgramModel(
      name: map['name'] != null ? map['name'] as String : null,
      days: map['days'] != null
          ? List<Day>.from(
              (map['days'] as List<dynamic>).map<Day?>(
                (x) => Day.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      dayId: map['dayId'] != null ? map['dayId'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProgramModel.fromJson(String source) =>
      ProgramModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'ProgramModel(name: $name, days: $days, dayId: $dayId)';

  @override
  bool operator ==(covariant ProgramModel other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        listEquals(other.days, days) &&
        other.dayId == dayId;
  }

  @override
  int get hashCode => name.hashCode ^ days.hashCode ^ dayId.hashCode;
}
