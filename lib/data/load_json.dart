import 'package:fitness/model/MovementModel.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

import '../service/other/dprint.dart';

// Load json data from assets and converts to exercise model and returns a list of exercise model
Future<List<MovementModel>> loadJsonData() async {
  var i = 1;
  String jsonString = await rootBundle.loadString('assets/exercises.json');
  List<MovementModel> exercisesList = json
      .decode(jsonString)
      .map<MovementModel>((e) => MovementModel.fromMap(e, i: i++))
      .toList();
  if (kDebugMode) {
    dprint(jsonString.runtimeType);
    dprint(exercisesList.length);
  }

  // dprint(exercisesModel);
  return exercisesList;
}
