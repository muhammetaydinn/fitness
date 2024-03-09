import 'package:fitness/model/MovementModel.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

// Load json data from assets and converts to exercise model and returns a list of exercise model
Future<List<MovementModel>> loadJsonData() async {
  var i = 1;
  String jsonString = await rootBundle.loadString('assets/exercises.json');
  List<MovementModel> exercisesList = json
      .decode(jsonString)
      .map<MovementModel>((e) => MovementModel.fromMap(e, i++))
      .toList();
  if (kDebugMode) {
    print(jsonString.runtimeType);
    print(exercisesList.length);
  }

  // print(exercisesModel);
  return exercisesList;
}
