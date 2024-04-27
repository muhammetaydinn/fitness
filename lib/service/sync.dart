//sync programs service
import 'dart:convert';

import 'package:fitness/model/sync/SyncProgramModel.dart';
import 'package:fitness/service/other/dprint.dart';
import 'package:fitness/service/storage/get_token.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:fitness/model/ProgramModel.dart';

import '../constants/api.dart';
import '../controller/all_controller.dart';
import '../model/sync/SyncDay.dart';
import '../model/sync/SyncExcerciseModel.dart';
import '../model/sync/SyncProgramListModel.dart';

Future<List<ProgramModel>> syncPrograms() async {
  //get user token
  String accessToken = await getToken();

  final allController = Get.put(AllController());
  var programList = allController.programList;
  //programlist to syncprogramlistmodel
  SyncProgramListModel syncProgramListModel = SyncProgramListModel(
      programs: programList
          .map((e) => SyncProgramModel(
              id: e.id,
              name: e.name,
              days: e.days
                  ?.map((e) => SyncDay(
                      name: e.name,
                      exercises: e.exercises
                          ?.map((e) => SyncExcerciseModel(
                                movementId: e.movementId,
                                reps: e.reps,
                                weightDuration: e.weightDuration,
                                setCount: e.set,
                              ))
                          .toList()))
                  .toList()))
          .toList());

  //post local programs to the server
  var response = await http.post(headers: {
    "Content-Type": "application/json",
    "Authorization": "Bearer $accessToken"
  }, Uri.parse(Api.syncProgramsApi), body: syncProgramListModel.toJson());
  dprint(response.body);
  //TODO: handle response
  //get programs from the server
  SyncProgramListModel syncProgramListModelResponse =
      SyncProgramListModel.fromJson(response.body);
  dprint(syncProgramListModelResponse.programs.length);
  // declare to programs getx controller
  //save programs to the local storage

  return [];
}
