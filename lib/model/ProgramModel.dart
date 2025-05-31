// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'DayModel.dart';

class ProgramModel {
  //TODO: İF CRRASHES DELETE THE METHODS AND RECREATE THEM
  int? id;
  String? name;
  List<Day>? days;
  ProgramModel({
    this.id,
    this.name,
    this.days,
  });
 

  ProgramModel copyWith({
    int? id,
    String? name,
    List<Day>? days,
  }) {
    return ProgramModel(
      id: id ?? this.id,
      name: name ?? this.name,
      days: days ?? this.days,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'days': days?.map((x) => x?.toMap()).toList(),
    };
  }

  factory ProgramModel.fromMap(Map<String, dynamic> map) {
    return ProgramModel(
      id: map['id'] != null ? map['id'] as int : null,
      name: map['name'] != null ? map['name'] as String : null,
      days: map['days'] != null ? List<Day>.from((map['days'] as List<dynamic>).map<Day?>((x) => Day.fromMap(x as Map<String,dynamic>),),) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProgramModel.fromJson(String source) => ProgramModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'ProgramModel(id: $id, name: $name, days: $days)';

  @override
  bool operator ==(covariant ProgramModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.name == name &&
      listEquals(other.days, days);
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ days.hashCode;
}
