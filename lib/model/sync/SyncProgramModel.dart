

import 'dart:convert';

import 'package:fitness/model/sync/SyncDay.dart';
import 'package:flutter/foundation.dart';

class SyncProgramModel {
    //TODO: İF CRRASHES DELETE THE METHODS AND RECREATE THEM
  int? id;
  String? name;
  List<SyncDay>? days;
  SyncProgramModel({
    this.id,
    this.name,
    this.days,
  });


  SyncProgramModel copyWith({
    int? id,
    String? name,
    List<SyncDay>? days,
  }) {
    return SyncProgramModel(
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

  factory SyncProgramModel.fromMap(Map<String, dynamic> map) {
    return SyncProgramModel(
      id: map['id'] != null ? map['id'] as int : null,
      name: map['name'] != null ? map['name'] as String : null,
      days: map['days'] != null ? List<SyncDay>.from((map['days'] as List<dynamic>).map<SyncDay?>((x) => SyncDay.fromMap(x as Map<String,dynamic>),),) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory SyncProgramModel.fromJson(String source) => SyncProgramModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'SyncProgramModel(id: $id, name: $name, days: $days)';

  @override
  bool operator ==(covariant SyncProgramModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.name == name &&
      listEquals(other.days, days);
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ days.hashCode;
}
