import 'package:fitness/model/ExercisesModel.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

// Load json data from assets and converts to exercise model and returns a list of exercise model
Future<List<ExercisesModel>> loadJsonData() async {
  String jsonString = await rootBundle.loadString('assets/exercises.json');
  List<ExercisesModel> exercisesList = json
      .decode(jsonString)
      .map<ExercisesModel>((e) => ExercisesModel.fromMap(e))
      .toList();
  if (kDebugMode) {
    print(jsonString.runtimeType);
    print(exercisesList.length);
  }

  // print(exercisesModel);
  return exercisesList;
}
