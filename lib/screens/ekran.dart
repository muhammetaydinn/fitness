import 'package:fitness/data/convert_to_snake_case.dart';
import 'package:fitness/model/MovementModel.dart';
import 'package:flutter/material.dart';

import '../data/load_json.dart';

class Ekran extends StatefulWidget {
  const Ekran({super.key});

  @override
  State<Ekran> createState() => _EkranState();
}

class _EkranState extends State<Ekran> {
  List<MovementModel> exercisesList = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadJsonData().then((value) {
      setState(() {
        exercisesList = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My asd Programs'),
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        body: Center(
          child:
              // const Text(
              //   'My Programs',
              //   style: TextStyle(
              //     fontSize: 30,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
              // Image.network(getImagePaths("Ab_Crunch_Machine")[0]), // 0.jpg
              // Image.network(getImagePaths("Ab_Crunch_Machine")[1]), // 1.jpg
              Column(
            children: [
              Expanded(
                child: ListView.builder(
                    itemCount: exercisesList.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                          title: Text(exercisesList[index].name),
                          // subtitle: Text(exercisesList[index].level),
                          leading: Text(exercisesList[index].id.toString()),
                          subtitle: Text(
                              convertToSnakeCase(exercisesList[index].name)),
                          trailing:
                              //yuklenmediyse gri bir container

                              Container(
                                  color: Colors.grey,
                                  child: Image.network(getImagePaths(
                                      convertToSnakeCase(
                                          exercisesList[index].name))[0])));
                    }),
              ),
            ],
          ),
          //SHOW ALL TEXTS IN THE JSON FILE
        ));
  }
}

List<String> getImagePaths(String exercise) {
  return [
    "https://raw.githubusercontent.com/muhammetaydinn/exercises.json/master/exercises/$exercise/images/0.jpg",
    "https://raw.githubusercontent.com/muhammetaydinn/exercises.json/master/exercises/$exercise/images/1.jpg",
  ];
}
