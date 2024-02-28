// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class ExercisesModel {
  String name;
  String? force;
  String level;
  String? mechanic;
  String? equipment;
  List<String> primaryMuscles;
  List<String> secondaryMuscles;
  List<String> instructions;
  String category;
  ExercisesModel({
    required this.name,
    this.force,
    required this.level,
    this.mechanic,
    this.equipment,
    required this.primaryMuscles,
    required this.secondaryMuscles,
    required this.instructions,
    required this.category,
  });

  ExercisesModel copyWith({
    String? name,
    String? force,
    String? level,
    String? mechanic,
    String? equipment,
    List<String>? primaryMuscles,
    List<String>? secondaryMuscles,
    List<String>? instructions,
    String? category,
  }) {
    return ExercisesModel(
      name: name ?? this.name,
      force: force ?? this.force,
      level: level ?? this.level,
      mechanic: mechanic ?? this.mechanic,
      equipment: equipment ?? this.equipment,
      primaryMuscles: primaryMuscles ?? this.primaryMuscles,
      secondaryMuscles: secondaryMuscles ?? this.secondaryMuscles,
      instructions: instructions ?? this.instructions,
      category: category ?? this.category,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'force': force,
      'level': level,
      'mechanic': mechanic,
      'equipment': equipment,
      'primaryMuscles': primaryMuscles,
      'secondaryMuscles': secondaryMuscles,
      'instructions': instructions,
      'category': category,
    };
  }

  factory ExercisesModel.fromMap(Map<String, dynamic> map) {
    return ExercisesModel(
      name: map['name'] as String,
      force: map['force'] != null ? map['force'] as String : null,
      level: map['level'] as String,
      mechanic: map['mechanic'] != null ? map['mechanic'] as String : null,
      equipment: map['equipment'] != null ? map['equipment'] as String : null,
      primaryMuscles:
          List<String>.from((map['primaryMuscles'] as List<dynamic>)),
      secondaryMuscles:
          List<String>.from((map['secondaryMuscles'] as List<dynamic>)),
      instructions: List<String>.from((map['instructions'] as List<dynamic>)),
      category: map['category'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ExercisesModel.fromJson(String source) =>
      ExercisesModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ExercisesModel(name: $name, force: $force, level: $level, mechanic: $mechanic, equipment: $equipment, primaryMuscles: $primaryMuscles, secondaryMuscles: $secondaryMuscles, instructions: $instructions, category: $category)';
  }

  @override
  bool operator ==(covariant ExercisesModel other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.force == force &&
        other.level == level &&
        other.mechanic == mechanic &&
        other.equipment == equipment &&
        listEquals(other.primaryMuscles, primaryMuscles) &&
        listEquals(other.secondaryMuscles, secondaryMuscles) &&
        listEquals(other.instructions, instructions) &&
        other.category == category;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        force.hashCode ^
        level.hashCode ^
        mechanic.hashCode ^
        equipment.hashCode ^
        primaryMuscles.hashCode ^
        secondaryMuscles.hashCode ^
        instructions.hashCode ^
        category.hashCode;
  }
}
