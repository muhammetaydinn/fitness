// import 'dart:ui' as ui;
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../controller/all_controller.dart';

// //Add this CustomPaint widget to the Widget Tree

// //Copy this CustomPainter code to the Bottom of the File
// class RPSCustomPainter extends CustomPainter {
//   final _allController = Get.put(AllController());
//   @override
//   void paint(Canvas canvas, Size size) {
//     Path path_0 = Path();
//     path_0.moveTo(size.width * 0.7812500, size.height * 0.7944785);
//     path_0.lineTo(size.width * 0.7152778, size.height * 0.7546012);
//     path_0.lineTo(size.width * 0.7083333, size.height * 0.7546012);
//     path_0.lineTo(size.width * 0.7083333, size.height * 0.7791411);
//     path_0.lineTo(size.width * 0.7083333, size.height * 0.8098160);
//     path_0.lineTo(size.width * 0.7083333, size.height * 0.8527607);
//     path_0.lineTo(size.width * 0.7152778, size.height * 0.8773006);
//     path_0.lineTo(size.width * 0.7361111, size.height * 0.9018405);
//     path_0.lineTo(size.width * 0.7604167, size.height * 0.9325153);
//     path_0.lineTo(size.width * 0.7986111, size.height * 0.9325153);
//     path_0.lineTo(size.width * 0.8437500, size.height * 0.9171779);
//     path_0.cubicTo(
//         size.width * 0.8587986,
//         size.height * 0.9151350,
//         size.width * 0.8937500,
//         size.height * 0.9110429,
//         size.width * 0.9131944,
//         size.height * 0.9110429);
//     path_0.cubicTo(
//         size.width * 0.9326389,
//         size.height * 0.9110429,
//         size.width * 0.9606458,
//         size.height * 0.9049080,
//         size.width * 0.9722222,
//         size.height * 0.9018405);
//     path_0.lineTo(size.width * 0.9930556, size.height * 0.8895706);
//     path_0.lineTo(size.width * 0.9513889, size.height * 0.8527607);
//     path_0.lineTo(size.width * 0.8576389, size.height * 0.8220859);
//     path_0.lineTo(size.width * 0.7812500, size.height * 0.7944785);
//     path_0.close();

//     Paint paint0Fill = Paint()..style = PaintingStyle.fill;
//     paint0Fill.color = const Color(0xffD5AAAA).withOpacity(1.0);
//     canvas.drawPath(path_0, paint0Fill);

//     Path path_1 = Path();
//     path_1.moveTo(size.width * 0.2430556, size.height * 0.7852761);
//     path_1.lineTo(size.width * 0.2951389, size.height * 0.7515337);
//     path_1.lineTo(size.width * 0.2951389, size.height * 0.7607362);
//     path_1.lineTo(size.width * 0.2951389, size.height * 0.8006135);
//     path_1.lineTo(size.width * 0.2951389, size.height * 0.8435583);
//     path_1.lineTo(size.width * 0.2881944, size.height * 0.8680982);
//     path_1.lineTo(size.width * 0.2708333, size.height * 0.9018405);
//     path_1.lineTo(size.width * 0.2430556, size.height * 0.9110429);
//     path_1.lineTo(size.width * 0.2048611, size.height * 0.9263804);
//     path_1.lineTo(size.width * 0.1770833, size.height * 0.9263804);
//     path_1.lineTo(size.width * 0.1180556, size.height * 0.9110429);
//     path_1.lineTo(size.width * 0.06597222, size.height * 0.9079755);
//     path_1.lineTo(size.width * 0.006944444, size.height * 0.9018405);
//     path_1.lineTo(size.width * 0.02777778, size.height * 0.8742331);
//     path_1.lineTo(size.width * 0.07986111, size.height * 0.8527607);
//     path_1.lineTo(size.width * 0.1215278, size.height * 0.8282209);
//     path_1.lineTo(size.width * 0.1840278, size.height * 0.8128834);
//     path_1.lineTo(size.width * 0.2430556, size.height * 0.7852761);
//     path_1.close();

//     Paint paint1Fill = Paint()..style = PaintingStyle.fill;
//     paint1Fill.color = const Color(0xffD5AAAA).withOpacity(1.0);
//     canvas.drawPath(path_1, paint1Fill);

//     Path path_2 = Path();
//     path_2.moveTo(size.width * 0.7812500, size.height * 0.7944785);
//     path_2.lineTo(size.width * 0.7152778, size.height * 0.7546012);
//     path_2.lineTo(size.width * 0.7083333, size.height * 0.7546012);
//     path_2.lineTo(size.width * 0.7083333, size.height * 0.7791411);
//     path_2.lineTo(size.width * 0.7083333, size.height * 0.8098160);
//     path_2.lineTo(size.width * 0.7083333, size.height * 0.8527607);
//     path_2.lineTo(size.width * 0.7152778, size.height * 0.8773006);
//     path_2.lineTo(size.width * 0.7361111, size.height * 0.9018405);
//     path_2.lineTo(size.width * 0.7604167, size.height * 0.9325153);
//     path_2.lineTo(size.width * 0.7986111, size.height * 0.9325153);
//     path_2.lineTo(size.width * 0.8437500, size.height * 0.9171779);
//     path_2.cubicTo(
//         size.width * 0.8587986,
//         size.height * 0.9151350,
//         size.width * 0.8937500,
//         size.height * 0.9110429,
//         size.width * 0.9131944,
//         size.height * 0.9110429);
//     path_2.cubicTo(
//         size.width * 0.9326389,
//         size.height * 0.9110429,
//         size.width * 0.9606458,
//         size.height * 0.9049080,
//         size.width * 0.9722222,
//         size.height * 0.9018405);
//     path_2.lineTo(size.width * 0.9930556, size.height * 0.8895706);
//     path_2.lineTo(size.width * 0.9513889, size.height * 0.8527607);
//     path_2.lineTo(size.width * 0.8576389, size.height * 0.8220859);
//     path_2.lineTo(size.width * 0.7812500, size.height * 0.7944785);
//     path_2.close();

//     Paint paint2Stroke = Paint()
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = 2;
//     paint2Stroke.color = const Color(0xff00FF94).withOpacity(1.0);
//     canvas.drawPath(path_2, paint2Stroke);

//     Paint paint2Fill = Paint()..style = PaintingStyle.fill;
//     paint2Fill.color = const Color(0xff000000).withOpacity(1.0);
//     canvas.drawPath(path_2, paint2Fill);

//     Path path_3 = Path();
//     path_3.moveTo(size.width * 0.2430556, size.height * 0.7852761);
//     path_3.lineTo(size.width * 0.2951389, size.height * 0.7515337);
//     path_3.lineTo(size.width * 0.2951389, size.height * 0.7607362);
//     path_3.lineTo(size.width * 0.2951389, size.height * 0.8006135);
//     path_3.lineTo(size.width * 0.2951389, size.height * 0.8435583);
//     path_3.lineTo(size.width * 0.2881944, size.height * 0.8680982);
//     path_3.lineTo(size.width * 0.2708333, size.height * 0.9018405);
//     path_3.lineTo(size.width * 0.2430556, size.height * 0.9110429);
//     path_3.lineTo(size.width * 0.2048611, size.height * 0.9263804);
//     path_3.lineTo(size.width * 0.1770833, size.height * 0.9263804);
//     path_3.lineTo(size.width * 0.1180556, size.height * 0.9110429);
//     path_3.lineTo(size.width * 0.06597222, size.height * 0.9079755);
//     path_3.lineTo(size.width * 0.006944444, size.height * 0.9018405);
//     path_3.lineTo(size.width * 0.02777778, size.height * 0.8742331);
//     path_3.lineTo(size.width * 0.07986111, size.height * 0.8527607);
//     path_3.lineTo(size.width * 0.1215278, size.height * 0.8282209);
//     path_3.lineTo(size.width * 0.1840278, size.height * 0.8128834);
//     path_3.lineTo(size.width * 0.2430556, size.height * 0.7852761);
//     path_3.close();

//     Paint paint3Stroke = Paint()
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = 2;
//     paint3Stroke.color = const Color(0xff00FF94).withOpacity(1.0);
//     canvas.drawPath(path_3, paint3Stroke);

//     Paint paint3Fill = Paint()..style = PaintingStyle.fill;
//     paint3Fill.color = const Color(0xff000000).withOpacity(1.0);
//     canvas.drawPath(path_3, paint3Fill);

//     Path path_4 = Path();
//     path_4.moveTo(size.width * 0.2986111, size.height * 0.8435583);
//     path_4.lineTo(size.width * 0.2986111, size.height * 0.5644172);
//     path_4.lineTo(size.width * 0.3298611, size.height * 0.6104294);
//     path_4.lineTo(size.width * 0.3750000, size.height * 0.6380368);
//     path_4.lineTo(size.width * 0.3888889, size.height * 0.6625767);
//     path_4.lineTo(size.width * 0.4270833, size.height * 0.6748466);
//     path_4.lineTo(size.width * 0.4652778, size.height * 0.6871166);
//     path_4.lineTo(size.width * 0.5312500, size.height * 0.6871166);
//     path_4.lineTo(size.width * 0.6041667, size.height * 0.6625767);
//     path_4.lineTo(size.width * 0.6666667, size.height * 0.6226994);
//     path_4.lineTo(size.width * 0.7083333, size.height * 0.5644172);
//     path_4.lineTo(size.width * 0.7083333, size.height * 0.6441718);
//     path_4.lineTo(size.width * 0.7083333, size.height * 0.7269939);
//     path_4.lineTo(size.width * 0.7083333, size.height * 0.8067485);
//     path_4.lineTo(size.width * 0.7083333, size.height * 0.8588957);
//     path_4.lineTo(size.width * 0.7187500, size.height * 0.8865031);
//     path_4.lineTo(size.width * 0.7430556, size.height * 0.9110429);
//     path_4.lineTo(size.width * 0.7569444, size.height * 0.9263804);
//     path_4.lineTo(size.width * 0.7083333, size.height * 0.9263804);
//     path_4.lineTo(size.width * 0.6597222, size.height * 0.9263804);
//     path_4.lineTo(size.width * 0.6215278, size.height * 0.9263804);
//     path_4.lineTo(size.width * 0.5798611, size.height * 0.9355828);
//     path_4.lineTo(size.width * 0.5312500, size.height * 0.9631902);
//     path_4.lineTo(size.width * 0.5069444, size.height * 0.9938650);
//     path_4.lineTo(size.width * 0.4965278, size.height * 0.9846626);
//     path_4.lineTo(size.width * 0.4548611, size.height * 0.9447853);
//     path_4.lineTo(size.width * 0.4270833, size.height * 0.9263804);
//     path_4.lineTo(size.width * 0.3750000, size.height * 0.9263804);
//     path_4.lineTo(size.width * 0.2881944, size.height * 0.9263804);
//     path_4.lineTo(size.width * 0.2187500, size.height * 0.9263804);
//     path_4.lineTo(size.width * 0.2743056, size.height * 0.8987730);
//     path_4.lineTo(size.width * 0.2986111, size.height * 0.8435583);
//     path_4.close();

//     Paint paint4Stroke = Paint()
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = 2;
//     paint4Stroke.color = const Color(0xff00FF94).withOpacity(1.0);
//     canvas.drawPath(path_4, paint4Stroke);

//     Paint paint4Fill = Paint()..style = PaintingStyle.fill;
//     paint4Fill.color = const Color(0xffD9D9D9).withOpacity(1.0);
//     canvas.drawPath(path_4, paint4Fill);

//     Path path_5 = Path();
//     path_5.moveTo(size.width * 0.2222222, size.height * 0.4141104);
//     path_5.lineTo(size.width * 0.2326389, size.height * 0.3680982);
//     path_5.lineTo(size.width * 0.2708333, size.height * 0.3435583);
//     path_5.lineTo(size.width * 0.2777778, size.height * 0.2791411);
//     path_5.lineTo(size.width * 0.2777778, size.height * 0.2269939);
//     path_5.lineTo(size.width * 0.2951389, size.height * 0.1809816);
//     path_5.lineTo(size.width * 0.3402778, size.height * 0.1533742);
//     path_5.lineTo(size.width * 0.5000000, size.height * 0.1687117);
//     path_5.lineTo(size.width * 0.6388889, size.height * 0.1380368);
//     path_5.lineTo(size.width * 0.6666667, size.height * 0.1441718);
//     path_5.lineTo(size.width * 0.6944444, size.height * 0.1840491);
//     path_5.lineTo(size.width * 0.7048611, size.height * 0.2208589);
//     path_5.lineTo(size.width * 0.7256944, size.height * 0.3067485);
//     path_5.lineTo(size.width * 0.7256944, size.height * 0.3404908);
//     path_5.lineTo(size.width * 0.7430556, size.height * 0.3558282);
//     path_5.lineTo(size.width * 0.7708333, size.height * 0.3650307);
//     path_5.lineTo(size.width * 0.7847222, size.height * 0.3957055);
//     path_5.lineTo(size.width * 0.7847222, size.height * 0.4447853);
//     path_5.lineTo(size.width * 0.7569444, size.height * 0.5030675);
//     path_5.lineTo(size.width * 0.7187500, size.height * 0.5122699);
//     path_5.lineTo(size.width * 0.7187500, size.height * 0.5337423);
//     path_5.lineTo(size.width * 0.6909722, size.height * 0.5920245);
//     path_5.lineTo(size.width * 0.6597222, size.height * 0.6288344);
//     path_5.lineTo(size.width * 0.5902778, size.height * 0.6687117);
//     path_5.lineTo(size.width * 0.5243056, size.height * 0.6901840);
//     path_5.lineTo(size.width * 0.4722222, size.height * 0.6779141);
//     path_5.lineTo(size.width * 0.3958333, size.height * 0.6564417);
//     path_5.lineTo(size.width * 0.3194444, size.height * 0.5920245);
//     path_5.lineTo(size.width * 0.2847222, size.height * 0.5122699);
//     path_5.lineTo(size.width * 0.2777778, size.height * 0.5122699);
//     path_5.lineTo(size.width * 0.2361111, size.height * 0.4907975);
//     path_5.lineTo(size.width * 0.2222222, size.height * 0.4141104);
//     path_5.close();

//     Paint paint5Fill = Paint()..style = PaintingStyle.fill;
//     paint5Fill.color = const Color(0xff5E5E5E).withOpacity(1.0);
//     canvas.drawPath(path_5, paint5Fill);

//     Path path_6 = Path();
//     path_6.moveTo(size.width * 0.2638889, size.height * 0.3435583);
//     path_6.lineTo(size.width * 0.2326389, size.height * 0.3680982);
//     path_6.moveTo(size.width * 0.2326389, size.height * 0.3680982);
//     path_6.lineTo(size.width * 0.2222222, size.height * 0.4141104);
//     path_6.lineTo(size.width * 0.2361111, size.height * 0.4907975);
//     path_6.lineTo(size.width * 0.2777778, size.height * 0.5122699);
//     path_6.lineTo(size.width * 0.2847222, size.height * 0.5122699);
//     path_6.lineTo(size.width * 0.3194444, size.height * 0.5920245);
//     path_6.lineTo(size.width * 0.3958333, size.height * 0.6564417);
//     path_6.lineTo(size.width * 0.4722222, size.height * 0.6779141);
//     path_6.lineTo(size.width * 0.5243056, size.height * 0.6901840);
//     path_6.lineTo(size.width * 0.5902778, size.height * 0.6687117);
//     path_6.lineTo(size.width * 0.6597222, size.height * 0.6288344);
//     path_6.lineTo(size.width * 0.6909722, size.height * 0.5920245);
//     path_6.lineTo(size.width * 0.7187500, size.height * 0.5337423);
//     path_6.lineTo(size.width * 0.7187500, size.height * 0.5122699);
//     path_6.lineTo(size.width * 0.7569444, size.height * 0.5030675);
//     path_6.lineTo(size.width * 0.7847222, size.height * 0.4447853);
//     path_6.lineTo(size.width * 0.7847222, size.height * 0.3957055);
//     path_6.lineTo(size.width * 0.7708333, size.height * 0.3650307);
//     path_6.lineTo(size.width * 0.7430556, size.height * 0.3558282);
//     path_6.lineTo(size.width * 0.7256944, size.height * 0.3404908);
//     path_6.lineTo(size.width * 0.7256944, size.height * 0.3067485);
//     path_6.lineTo(size.width * 0.7048611, size.height * 0.2208589);
//     path_6.lineTo(size.width * 0.6944444, size.height * 0.1840491);
//     path_6.lineTo(size.width * 0.6666667, size.height * 0.1441718);
//     path_6.lineTo(size.width * 0.6388889, size.height * 0.1380368);
//     path_6.lineTo(size.width * 0.5000000, size.height * 0.1687117);
//     path_6.lineTo(size.width * 0.3402778, size.height * 0.1533742);
//     path_6.lineTo(size.width * 0.2951389, size.height * 0.1809816);
//     path_6.lineTo(size.width * 0.2777778, size.height * 0.2269939);
//     path_6.lineTo(size.width * 0.2777778, size.height * 0.2791411);
//     path_6.lineTo(size.width * 0.2708333, size.height * 0.3435583);
//     path_6.lineTo(size.width * 0.2326389, size.height * 0.3680982);
//     path_6.close();

//     Paint paint6Stroke = Paint()
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = 2;
//     paint6Stroke.color = const Color(0xff00FF94).withOpacity(1.0);
//     canvas.drawPath(path_6, paint6Stroke);

//     Paint paint6Fill = Paint()..style = PaintingStyle.fill;
//     paint6Fill.color = const Color(0xff000000).withOpacity(1.0);
//     canvas.drawPath(path_6, paint6Fill);

//     Path path_7 = Path();
//     path_7.moveTo(size.width * 0.2708333, size.height * 0.3435583);
//     path_7.lineTo(size.width * 0.2638889, size.height * 0.3435583);
//     path_7.lineTo(size.width * 0.2569444, size.height * 0.3404908);
//     path_7.lineTo(size.width * 0.2500000, size.height * 0.3251534);
//     path_7.lineTo(size.width * 0.2430556, size.height * 0.3036810);
//     path_7.lineTo(size.width * 0.2361111, size.height * 0.2730061);
//     path_7.lineTo(size.width * 0.2291667, size.height * 0.2269939);
//     path_7.lineTo(size.width * 0.2291667, size.height * 0.1901840);
//     path_7.lineTo(size.width * 0.2326389, size.height * 0.1656442);
//     path_7.lineTo(size.width * 0.2395833, size.height * 0.1380368);
//     path_7.lineTo(size.width * 0.2465278, size.height * 0.1134969);
//     path_7.lineTo(size.width * 0.2534722, size.height * 0.09509202);
//     path_7.lineTo(size.width * 0.2708333, size.height * 0.07975460);
//     path_7.lineTo(size.width * 0.2812500, size.height * 0.06441718);
//     path_7.lineTo(size.width * 0.2708333, size.height * 0.04601227);
//     path_7.lineTo(size.width * 0.2812500, size.height * 0.03067485);
//     path_7.lineTo(size.width * 0.3055556, size.height * 0.03067485);
//     path_7.lineTo(size.width * 0.3194444, size.height * 0.02147239);
//     path_7.lineTo(size.width * 0.3333333, size.height * 0.009202454);
//     path_7.lineTo(size.width * 0.3506944, size.height * 0.01226994);
//     path_7.lineTo(size.width * 0.3750000, size.height * 0.01226994);
//     path_7.lineTo(size.width * 0.3819444, size.height * 0.003067485);
//     path_7.lineTo(size.width * 0.4201389, size.height * 0.003067485);
//     path_7.lineTo(size.width * 0.4687500, size.height * 0.003067485);
//     path_7.lineTo(size.width * 0.5173611, size.height * 0.009202454);
//     path_7.lineTo(size.width * 0.5486111, size.height * 0.01533742);
//     path_7.lineTo(size.width * 0.6180556, size.height * 0.03067485);
//     path_7.lineTo(size.width * 0.6527778, size.height * 0.04601227);
//     path_7.lineTo(size.width * 0.6944444, size.height * 0.07055215);
//     path_7.lineTo(size.width * 0.7152778, size.height * 0.08895706);
//     path_7.lineTo(size.width * 0.7291667, size.height * 0.1073620);
//     path_7.lineTo(size.width * 0.7430556, size.height * 0.1288344);
//     path_7.lineTo(size.width * 0.7500000, size.height * 0.1472393);
//     path_7.lineTo(size.width * 0.7569444, size.height * 0.1656442);
//     path_7.lineTo(size.width * 0.7604167, size.height * 0.1748466);
//     path_7.lineTo(size.width * 0.7604167, size.height * 0.2055215);
//     path_7.lineTo(size.width * 0.7604167, size.height * 0.2515337);
//     path_7.lineTo(size.width * 0.7534722, size.height * 0.2822086);
//     path_7.lineTo(size.width * 0.7500000, size.height * 0.3128834);
//     path_7.lineTo(size.width * 0.7430556, size.height * 0.3312883);
//     path_7.lineTo(size.width * 0.7361111, size.height * 0.3343558);
//     path_7.lineTo(size.width * 0.7291667, size.height * 0.3190184);
//     path_7.lineTo(size.width * 0.7222222, size.height * 0.3067485);
//     path_7.lineTo(size.width * 0.7222222, size.height * 0.2668712);
//     path_7.lineTo(size.width * 0.7152778, size.height * 0.2331288);
//     path_7.lineTo(size.width * 0.7083333, size.height * 0.2055215);
//     path_7.lineTo(size.width * 0.6979167, size.height * 0.1779141);
//     path_7.lineTo(size.width * 0.6875000, size.height * 0.1503067);
//     path_7.lineTo(size.width * 0.6666667, size.height * 0.1349693);
//     path_7.lineTo(size.width * 0.6562500, size.height * 0.1319018);
//     path_7.lineTo(size.width * 0.6423611, size.height * 0.1319018);
//     path_7.lineTo(size.width * 0.6319444, size.height * 0.1380368);
//     path_7.lineTo(size.width * 0.6041667, size.height * 0.1441718);
//     path_7.lineTo(size.width * 0.5555556, size.height * 0.1503067);
//     path_7.lineTo(size.width * 0.5243056, size.height * 0.1595092);
//     path_7.lineTo(size.width * 0.4791667, size.height * 0.1625767);
//     path_7.lineTo(size.width * 0.4236111, size.height * 0.1656442);
//     path_7.lineTo(size.width * 0.3784722, size.height * 0.1595092);
//     path_7.lineTo(size.width * 0.3506944, size.height * 0.1503067);
//     path_7.lineTo(size.width * 0.3333333, size.height * 0.1472393);
//     path_7.lineTo(size.width * 0.3125000, size.height * 0.1533742);
//     path_7.lineTo(size.width * 0.2951389, size.height * 0.1687117);
//     path_7.lineTo(size.width * 0.2847222, size.height * 0.1871166);
//     path_7.lineTo(size.width * 0.2743056, size.height * 0.2055215);
//     path_7.lineTo(size.width * 0.2708333, size.height * 0.2269939);
//     path_7.lineTo(size.width * 0.2708333, size.height * 0.3435583);
//     path_7.close();

//     Paint paint7Stroke = Paint()
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = 2;
//     paint7Stroke.color = const Color(0xff00FF94).withOpacity(1.0);
//     canvas.drawPath(path_7, paint7Stroke);

//     Paint paint7Fill = Paint()..style = PaintingStyle.fill;
//     //if selected exercises length is greater than 0 then color the container
//     paint7Fill.color = _allController.selectedExercises.isNotEmpty
//         ? Colors.blue
//         : Colors.transparent;
//     canvas.drawPath(path_7, paint7Fill);
    
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
// }
