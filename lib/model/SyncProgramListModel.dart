// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:fitness/model/ProgramModel.dart';


class SyncProgramListModel {
  List<ProgramModel> programs;
  SyncProgramListModel({
    required this.programs,
  });

 

  SyncProgramListModel copyWith({
    List<ProgramModel>? programs,
  }) {
    return SyncProgramListModel(
      programs: programs ?? this.programs,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'programs': programs.map((x) => x.toMap()).toList(),
    };
  }

  factory SyncProgramListModel.fromMap(Map<String, dynamic> map) {
    return SyncProgramListModel(
      programs: List<ProgramModel>.from((map['programs'] as List<dynamic>).map<ProgramModel>((x) => ProgramModel.fromMap(x as Map<String,dynamic>),),),
    );
  }

  String toJson() => json.encode(toMap());

  factory SyncProgramListModel.fromJson(String source) => SyncProgramListModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'SyncProgramListModel(programs: $programs)';

  @override
  bool operator ==(covariant SyncProgramListModel other) {
    if (identical(this, other)) return true;
  
    return 
      listEquals(other.programs, programs);
  }

  @override
  int get hashCode => programs.hashCode;
}
