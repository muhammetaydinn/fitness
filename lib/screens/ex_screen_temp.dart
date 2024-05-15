// import 'package:fitness/data/convert_to_snake_case.dart';
// import 'package:fitness/model/MovementModel.dart';
// import 'package:fitness/service/other/dprint.dart';
// import 'package:fitness/widgets/exercise_card.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../controller/all_controller.dart';
// import '../data/load_json.dart';

// class ExerciseScreen extends StatefulWidget {
//   const ExerciseScreen({super.key});

//   @override
//   State<ExerciseScreen> createState() => _ExerciseScreenState();
// }

// class _ExerciseScreenState extends State<ExerciseScreen> {
//   final _allController = Get.put(AllController());

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('All Exercises'),
//           backgroundColor: Theme.of(context).colorScheme.primary,
//         ),
//         body: Center(
//           child:
//               // const Text(
//               //   'My Programs',
//               //   style: TextStyle(
//               //     fontSize: 30,
//               //     fontWeight: FontWeight.bold,
//               //   ),
//               // ),
//               // Image.network(getImagePaths("Ab_Crunch_Machine")[0]), // 0.jpg
//               // Image.network(getImagePaths("Ab_Crunch_Machine")[1]), // 1.jpg
//               Column(
//             children: [
//               Expanded(
//                   child: Obx(
//                 () => GridView.builder(
//                     padding: const EdgeInsets.all(10),
//                     gridDelegate:
//                         const SliverGridDelegateWithFixedCrossAxisCount(
//                       crossAxisCount: 3,
//                       childAspectRatio: 1,
//                       crossAxisSpacing: 10,
//                       mainAxisSpacing: 10,
//                     ),
//                     itemCount: _allController.movementList.length,
//                     itemBuilder: (context, index) {
//                       return ExerciseCard(
//                         key: ValueKey(_allController.movementList[index].id),
//                         index: index,
//                       );

//                       // Image.network(getImagePaths(
//                     }),
//               )),
//             ],
//           ),
//           //SHOW ALL TEXTS IN THE JSON FILE
//         ));
//   }
// }

// // List<String> getImagePaths(String exercise) {
// //   return [
// //     'assets/res/$exercise-0.jpg',
// //     'assets/res/$exercise-1.jpg',
// //   ];
// // }

// List<String> getImagePathsLocal(String exercise) {
//   // C:\Users\47eyu\Desktop\Muhammet\fitness\assets\exercises\3_4_Sit-Up\images\0.jpg
//   // assets\exercises\3_4_Sit-Up\images\0.jpg
//   return [
//     'assets/res/$exercise-0.jpg',
//     'assets/res/$exercise-1.jpg',
//   ];
// }
