// import 'dart:math';
// import 'dart:ui' as ui;

// import 'package:flutter/material.dart';

// Color randomColor() {
//   final random = Random();
//   return Color.fromARGB(
//     255,
//     random.nextInt(256),
//     random.nextInt(256),
//     random.nextInt(256),
//   );
// }

// //Copy this CustomPainter code to the Bottom of the File
// class RPSCustomPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     Path path_0 = Path();
//     path_0.moveTo(size.width * 0.4380896, size.height * 0.1455431);
//     path_0.lineTo(size.width * 0.4380896, size.height * 0.1670166);
//     path_0.cubicTo(
//         size.width * 0.4380896,
//         size.height * 0.1761750,
//         size.width * 0.4290814,
//         size.height * 0.1795488,
//         size.width * 0.4113485,
//         size.height * 0.1828792);
//     path_0.cubicTo(
//         size.width * 0.4092866,
//         size.height * 0.1824230,
//         size.width * 0.3824166,
//         size.height * 0.1765732,
//         size.width * 0.3528919,
//         size.height * 0.1770076);
//     path_0.arcToPoint(Offset(size.width * 0.3527115, size.height * 0.1770076),
//         radius: Radius.elliptical(
//             size.width * 0.0002190835, size.height * 0.0001230778),
//         rotation: 0,
//         largeArc: false,
//         clockwise: false);
//     path_0.lineTo(size.width * 0.3526857, size.height * 0.1770076);
//     path_0.cubicTo(
//         size.width * 0.3492319,
//         size.height * 0.1770511,
//         size.width * 0.3457137,
//         size.height * 0.1772031,
//         size.width * 0.3422341,
//         size.height * 0.1774348);
//     path_0.cubicTo(
//         size.width * 0.3452498,
//         size.height * 0.1769931,
//         size.width * 0.3476210,
//         size.height * 0.1765877,
//         size.width * 0.3484587,
//         size.height * 0.1763850);
//     path_0.cubicTo(
//         size.width * 0.3493608,
//         size.height * 0.1761606,
//         size.width * 0.3513583,
//         size.height * 0.1752773,
//         size.width * 0.3541935,
//         size.height * 0.1740320);
//     path_0.cubicTo(
//         size.width * 0.3590520,
//         size.height * 0.1719035,
//         size.width * 0.3657018,
//         size.height * 0.1689858,
//         size.width * 0.3704572,
//         size.height * 0.1677551);
//     path_0.cubicTo(
//         size.width * 0.3734729,
//         size.height * 0.1669876,
//         size.width * 0.3800196,
//         size.height * 0.1654455,
//         size.width * 0.3876231,
//         size.height * 0.1636573);
//     path_0.cubicTo(
//         size.width * 0.3988479,
//         size.height * 0.1610220,
//         size.width * 0.4115676,
//         size.height * 0.1580319,
//         size.width * 0.4161941,
//         size.height * 0.1567432);
//     path_0.cubicTo(
//         size.width * 0.4238234,
//         size.height * 0.1546002,
//         size.width * 0.4377159,
//         size.height * 0.1469621,
//         size.width * 0.4378447,
//         size.height * 0.1468898);
//     path_0.cubicTo(
//         size.width * 0.4378963,
//         size.height * 0.1468608,
//         size.width * 0.4379221,
//         size.height * 0.1468174,
//         size.width * 0.4379478,
//         size.height * 0.1467739);
//     path_0.cubicTo(
//         size.width * 0.4379994,
//         size.height * 0.1464192,
//         size.width * 0.4380509,
//         size.height * 0.1460210,
//         size.width * 0.4381025,
//         size.height * 0.1455431);
//     path_0.close();

//     Paint paint0Fill = Paint()..style = PaintingStyle.fill;
//     paint0Fill.color = randomColor().withOpacity(1.0);
//     canvas.drawPath(path_0, paint0Fill);

//     Path path_1 = Path();
//     path_1.moveTo(size.width * 0.6576757, size.height * 0.1774130);
//     path_1.cubicTo(
//         size.width * 0.6541703,
//         size.height * 0.1771597,
//         size.width * 0.6506263,
//         size.height * 0.1770293,
//         size.width * 0.6471725,
//         size.height * 0.1769859);
//     path_1.cubicTo(
//         size.width * 0.6176220,
//         size.height * 0.1765587,
//         size.width * 0.5907263,
//         size.height * 0.1824158,
//         size.width * 0.5886644,
//         size.height * 0.1828719);
//     path_1.cubicTo(
//         size.width * 0.5709186,
//         size.height * 0.1795416,
//         size.width * 0.5619233,
//         size.height * 0.1761678,
//         size.width * 0.5619233,
//         size.height * 0.1670094);
//     path_1.lineTo(size.width * 0.5619233, size.height * 0.1455938);
//     path_1.cubicTo(
//         size.width * 0.5619748,
//         size.height * 0.1460354,
//         size.width * 0.5620264,
//         size.height * 0.1464192,
//         size.width * 0.5620779,
//         size.height * 0.1467594);
//     path_1.cubicTo(
//         size.width * 0.5620779,
//         size.height * 0.1468029,
//         size.width * 0.5621295,
//         size.height * 0.1468463,
//         size.width * 0.5621810,
//         size.height * 0.1468753);
//     path_1.cubicTo(
//         size.width * 0.5623099,
//         size.height * 0.1469477,
//         size.width * 0.5761766,
//         size.height * 0.1545857,
//         size.width * 0.5838316,
//         size.height * 0.1567287);
//     path_1.cubicTo(
//         size.width * 0.5884195,
//         size.height * 0.1580174,
//         size.width * 0.6010748,
//         size.height * 0.1609930,
//         size.width * 0.6122352,
//         size.height * 0.1636066);
//     path_1.cubicTo(
//         size.width * 0.6199160,
//         size.height * 0.1654093,
//         size.width * 0.6265400,
//         size.height * 0.1669659,
//         size.width * 0.6295556,
//         size.height * 0.1677333);
//     path_1.cubicTo(
//         size.width * 0.6343110,
//         size.height * 0.1689496,
//         size.width * 0.6409351,
//         size.height * 0.1718601,
//         size.width * 0.6457936,
//         size.height * 0.1739958);
//     path_1.cubicTo(
//         size.width * 0.6486159,
//         size.height * 0.1752411,
//         size.width * 0.6506779,
//         size.height * 0.1761244,
//         size.width * 0.6515542,
//         size.height * 0.1763633);
//     path_1.cubicTo(
//         size.width * 0.6524048,
//         size.height * 0.1765877,
//         size.width * 0.6547502,
//         size.height * 0.1769569,
//         size.width * 0.6576757,
//         size.height * 0.1773986);
//     path_1.close();

//     Paint paint1Fill = Paint()..style = PaintingStyle.fill;
//     paint1Fill.color = randomColor().withOpacity(1.0);
//     canvas.drawPath(path_1, paint1Fill);

//     Path path_2 = Path();
//     path_2.moveTo(size.width * 0.6980128, size.height * 0.8447120);
//     path_2.cubicTo(
//         size.width * 0.6969560,
//         size.height * 0.8513292,
//         size.width * 0.6954740,
//         size.height * 0.8581782,
//         size.width * 0.6940822,
//         size.height * 0.8647954);
//     path_2.cubicTo(
//         size.width * 0.6904093,
//         size.height * 0.8819756,
//         size.width * 0.6869813,
//         size.height * 0.8982074,
//         size.width * 0.6903578,
//         size.height * 0.9086256);
//     path_2.cubicTo(
//         size.width * 0.6861565,
//         size.height * 0.9102980,
//         size.width * 0.6813753,
//         size.height * 0.9115288,
//         size.width * 0.6763622,
//         size.height * 0.9122817);
//     path_2.cubicTo(
//         size.width * 0.6749832,
//         size.height * 0.8329762,
//         size.width * 0.6720836,
//         size.height * 0.8099244,
//         size.width * 0.6633976,
//         size.height * 0.7416017);
//     path_2.lineTo(size.width * 0.6631656, size.height * 0.7397701);
//     path_2.lineTo(size.width * 0.6631656, size.height * 0.7397556);
//     path_2.cubicTo(
//         size.width * 0.6691840,
//         size.height * 0.7340288,
//         size.width * 0.6737847,
//         size.height * 0.7315890,
//         size.width * 0.6828831,
//         size.height * 0.7303437);
//     path_2.cubicTo(
//         size.width * 0.6832826,
//         size.height * 0.7312632,
//         size.width * 0.6841719,
//         size.height * 0.7326388,
//         size.width * 0.6853446,
//         size.height * 0.7344850);
//     path_2.cubicTo(
//         size.width * 0.6940048,
//         size.height * 0.7480959,
//         size.width * 0.7169442,
//         size.height * 0.7842953,
//         size.width * 0.6980128,
//         size.height * 0.8447120);
//     path_2.close();

//     Paint paint2Fill = Paint()..style = PaintingStyle.fill;
//     paint2Fill.color = randomColor().withOpacity(1.0);
//     canvas.drawPath(path_2, paint2Fill);

//     Path path_3 = Path();
//     path_3.moveTo(size.width * 0.3368344, size.height * 0.7397483);
//     path_3.lineTo(size.width * 0.3368344, size.height * 0.7397628);
//     path_3.lineTo(size.width * 0.3366024, size.height * 0.7415945);
//     path_3.cubicTo(
//         size.width * 0.3279164,
//         size.height * 0.8099172,
//         size.width * 0.3250168,
//         size.height * 0.8329689,
//         size.width * 0.3236636,
//         size.height * 0.9122745);
//     path_3.cubicTo(
//         size.width * 0.3186247,
//         size.height * 0.9115215,
//         size.width * 0.3138693,
//         size.height * 0.9102908,
//         size.width * 0.3096422,
//         size.height * 0.9086183);
//     path_3.cubicTo(
//         size.width * 0.3130187,
//         size.height * 0.8982002,
//         size.width * 0.3095907,
//         size.height * 0.8819539,
//         size.width * 0.3059178,
//         size.height * 0.8647737);
//     path_3.cubicTo(
//         size.width * 0.3044873,
//         size.height * 0.8581564,
//         size.width * 0.3030440,
//         size.height * 0.8513075,
//         size.width * 0.3019614,
//         size.height * 0.8446903);
//     path_3.cubicTo(
//         size.width * 0.2830558,
//         size.height * 0.7842591,
//         size.width * 0.3060209,
//         size.height * 0.7480742,
//         size.width * 0.3146554,
//         size.height * 0.7344488);
//     path_3.cubicTo(
//         size.width * 0.3158410,
//         size.height * 0.7326026,
//         size.width * 0.3167174,
//         size.height * 0.7312198,
//         size.width * 0.3171169,
//         size.height * 0.7303365);
//     path_3.cubicTo(
//         size.width * 0.3262539,
//         size.height * 0.7315818,
//         size.width * 0.3308160,
//         size.height * 0.7340216,
//         size.width * 0.3368344,
//         size.height * 0.7397483);
//     path_3.close();

//     Paint paint3Fill = Paint()..style = PaintingStyle.fill;
//     paint3Fill.color = randomColor().withOpacity(1.0);
//     canvas.drawPath(path_3, paint3Fill);

//     Path path_4 = Path();
//     path_4.moveTo(size.width * 0.6757049, size.height * 0.9123686);
//     path_4.arcToPoint(Offset(size.width * 0.6565673, size.height * 0.9127813),
//         radius: Radius.elliptical(
//             size.width * 0.04705526, size.height * 0.02643494),
//         rotation: 0,
//         largeArc: false,
//         clockwise: true);
//     path_4.cubicTo(
//         size.width * 0.6484613,
//         size.height * 0.8523790,
//         size.width * 0.6247487,
//         size.height * 0.7578625,
//         size.width * 0.6232796,
//         size.height * 0.7519910);
//     path_4.cubicTo(
//         size.width * 0.6261019,
//         size.height * 0.7523892,
//         size.width * 0.6289242,
//         size.height * 0.7525991,
//         size.width * 0.6317336,
//         size.height * 0.7525991);
//     path_4.lineTo(size.width * 0.6322362, size.height * 0.7525991);
//     path_4.cubicTo(
//         size.width * 0.6440667,
//         size.height * 0.7524978,
//         size.width * 0.6541445,
//         size.height * 0.7488127,
//         size.width * 0.6606397,
//         size.height * 0.7422244);
//     path_4.cubicTo(
//         size.width * 0.6613227,
//         size.height * 0.7415438,
//         size.width * 0.6619542,
//         size.height * 0.7408922,
//         size.width * 0.6625986,
//         size.height * 0.7402841);
//     path_4.lineTo(size.width * 0.6627532, size.height * 0.7416162);
//     path_4.cubicTo(
//         size.width * 0.6714392,
//         size.height * 0.8099534,
//         size.width * 0.6743389,
//         size.height * 0.8330051,
//         size.width * 0.6757178,
//         size.height * 0.9123686);
//     path_4.close();

//     Paint paint4Fill = Paint()..style = PaintingStyle.fill;
//     paint4Fill.color = randomColor().withOpacity(1.0);
//     canvas.drawPath(path_4, paint4Fill);

//     Path path_5 = Path();
//     path_5.moveTo(size.width * 0.6559359, size.height * 0.9127234);
//     path_5.cubicTo(
//         size.width * 0.6452910,
//         size.height * 0.9116446,
//         size.width * 0.6361282,
//         size.height * 0.9085025,
//         size.width * 0.6307155,
//         size.height * 0.9041224);
//     path_5.cubicTo(
//         size.width * 0.6307155,
//         size.height * 0.9041079,
//         size.width * 0.6306897,
//         size.height * 0.9040934,
//         size.width * 0.6306640,
//         size.height * 0.9040934);
//     path_5.cubicTo(
//         size.width * 0.6316434,
//         size.height * 0.8914743,
//         size.width * 0.6284989,
//         size.height * 0.8741566,
//         size.width * 0.6028661,
//         size.height * 0.8282268);
//     path_5.cubicTo(
//         size.width * 0.6012810,
//         size.height * 0.8252367,
//         size.width * 0.5990386,
//         size.height * 0.8234630,
//         size.width * 0.5968478,
//         size.height * 0.8217616);
//     path_5.cubicTo(
//         size.width * 0.5904299,
//         size.height * 0.8167154,
//         size.width * 0.5837801,
//         size.height * 0.8114955,
//         size.width * 0.5929429,
//         size.height * 0.7740074);
//     path_5.cubicTo(
//         size.width * 0.5986778,
//         size.height * 0.7455185,
//         size.width * 0.5982267,
//         size.height * 0.7450914,
//         size.width * 0.5926852,
//         size.height * 0.7398859);
//     path_5.cubicTo(
//         size.width * 0.5920279,
//         size.height * 0.7392633,
//         size.width * 0.5913063,
//         size.height * 0.7385972,
//         size.width * 0.5905459,
//         size.height * 0.7378008);
//     path_5.cubicTo(
//         size.width * 0.5997861,
//         size.height * 0.7452000,
//         size.width * 0.6111140,
//         size.height * 0.7501448,
//         size.width * 0.6225965,
//         size.height * 0.7518896);
//     path_5.cubicTo(
//         size.width * 0.6236275,
//         size.height * 0.7560019,
//         size.width * 0.6477009,
//         size.height * 0.8517347,
//         size.width * 0.6559488,
//         size.height * 0.9127306);
//     path_5.close();

//     Paint paint5Fill = Paint()..style = PaintingStyle.fill;
//     paint5Fill.color = randomColor().withOpacity(1.0);
//     canvas.drawPath(path_5, paint5Fill);

//     Path path_6 = Path();
//     path_6.moveTo(size.width * 0.4031264, size.height * 0.8217616);
//     path_6.cubicTo(
//         size.width * 0.4009614,
//         size.height * 0.8234630,
//         size.width * 0.3987190,
//         size.height * 0.8252223,
//         size.width * 0.3971339,
//         size.height * 0.8282123);
//     path_6.cubicTo(
//         size.width * 0.3715011,
//         size.height * 0.8741421,
//         size.width * 0.3683566,
//         size.height * 0.8914598,
//         size.width * 0.3693360,
//         size.height * 0.9040934);
//     path_6.cubicTo(
//         size.width * 0.3693103,
//         size.height * 0.9040934,
//         size.width * 0.3692845,
//         size.height * 0.9041079,
//         size.width * 0.3692845,
//         size.height * 0.9041224);
//     path_6.cubicTo(
//         size.width * 0.3638976,
//         size.height * 0.9085025,
//         size.width * 0.3547090,
//         size.height * 0.9116374,
//         size.width * 0.3441028,
//         size.height * 0.9127234);
//     path_6.cubicTo(
//         size.width * 0.3523120,
//         size.height * 0.8517419,
//         size.width * 0.3763983,
//         size.height * 0.7560019,
//         size.width * 0.3774292,
//         size.height * 0.7518824);
//     path_6.cubicTo(
//         size.width * 0.3889376,
//         size.height * 0.7501376,
//         size.width * 0.4002655,
//         size.height * 0.7451782,
//         size.width * 0.4095314,
//         size.height * 0.7377501);
//     path_6.cubicTo(
//         size.width * 0.4087453,
//         size.height * 0.7385610,
//         size.width * 0.4079978,
//         size.height * 0.7392416,
//         size.width * 0.4073406,
//         size.height * 0.7398787);
//     path_6.cubicTo(
//         size.width * 0.4017991,
//         size.height * 0.7450696,
//         size.width * 0.4013480,
//         size.height * 0.7455040,
//         size.width * 0.4070828,
//         size.height * 0.7740002);
//     path_6.cubicTo(
//         size.width * 0.4162457,
//         size.height * 0.8114810,
//         size.width * 0.4095959,
//         size.height * 0.8166937,
//         size.width * 0.4031522,
//         size.height * 0.8217544);
//     path_6.close();

//     Paint paint6Fill = Paint()..style = PaintingStyle.fill;
//     paint6Fill.color = randomColor().withOpacity(1.0);
//     canvas.drawPath(path_6, paint6Fill);

//     Path path_7 = Path();
//     path_7.moveTo(size.width * 0.3767204, size.height * 0.7519910);
//     path_7.cubicTo(
//         size.width * 0.3752384,
//         size.height * 0.7578770,
//         size.width * 0.3515387,
//         size.height * 0.8523935,
//         size.width * 0.3434327,
//         size.height * 0.9127813);
//     path_7.cubicTo(
//         size.width * 0.3369890,
//         size.height * 0.9133894,
//         size.width * 0.3304681,
//         size.height * 0.9132229,
//         size.width * 0.3243208,
//         size.height * 0.9123686);
//     path_7.cubicTo(
//         size.width * 0.3256611,
//         size.height * 0.8330051,
//         size.width * 0.3285736,
//         size.height * 0.8099679,
//         size.width * 0.3372597,
//         size.height * 0.7416307);
//     path_7.lineTo(size.width * 0.3374143, size.height * 0.7402841);
//     path_7.cubicTo(
//         size.width * 0.3380458,
//         size.height * 0.7408922,
//         size.width * 0.3386773,
//         size.height * 0.7415438,
//         size.width * 0.3393732,
//         size.height * 0.7422244);
//     path_7.cubicTo(
//         size.width * 0.3458683,
//         size.height * 0.7488127,
//         size.width * 0.3559591,
//         size.height * 0.7524905,
//         size.width * 0.3677767,
//         size.height * 0.7525991);
//     path_7.lineTo(size.width * 0.3682793, size.height * 0.7525991);
//     path_7.cubicTo(
//         size.width * 0.3710758,
//         size.height * 0.7525991,
//         size.width * 0.3738981,
//         size.height * 0.7523892,
//         size.width * 0.3767333,
//         size.height * 0.7519910);
//     path_7.close();

//     Paint paint7Fill = Paint()..style = PaintingStyle.fill;
//     paint7Fill.color = randomColor().withOpacity(1.0);
//     canvas.drawPath(path_7, paint7Fill);

//     Path path_8 = Path();
//     path_8.moveTo(size.width * 0.6873550, size.height * 0.6521604);
//     path_8.cubicTo(
//         size.width * 0.6873292,
//         size.height * 0.6522038,
//         size.width * 0.6873292,
//         size.height * 0.6522473,
//         size.width * 0.6873035,
//         size.height * 0.6522907);
//     path_8.lineTo(size.width * 0.6873035, size.height * 0.6523197);
//     path_8.cubicTo(
//         size.width * 0.6860663,
//         size.height * 0.6554980,
//         size.width * 0.6849064,
//         size.height * 0.6587849,
//         size.width * 0.6837981,
//         size.height * 0.6619414);
//     path_8.cubicTo(
//         size.width * 0.6791201,
//         size.height * 0.6753062,
//         size.width * 0.6747126,
//         size.height * 0.6879253,
//         size.width * 0.6627790,
//         size.height * 0.6912412);
//     path_8.cubicTo(
//         size.width * 0.6584489,
//         size.height * 0.6924575,
//         size.width * 0.6533069,
//         size.height * 0.6923923,
//         size.width * 0.6471725,
//         size.height * 0.6910602);
//     path_8.lineTo(size.width * 0.6471210, size.height * 0.6910457);
//     path_8.cubicTo(
//         size.width * 0.6471210,
//         size.height * 0.6910457,
//         size.width * 0.6470694,
//         size.height * 0.6910023,
//         size.width * 0.6470179,
//         size.height * 0.6909878);
//     path_8.cubicTo(
//         size.width * 0.6312052,
//         size.height * 0.6873751,
//         size.width * 0.6235502,
//         size.height * 0.6796936,
//         size.width * 0.6221712,
//         size.height * 0.6660682);
//     path_8.cubicTo(
//         size.width * 0.6208825,
//         size.height * 0.6533839,
//         size.width * 0.6250709,
//         size.height * 0.6367974,
//         size.width * 0.6303547,
//         size.height * 0.6158017);
//     path_8.cubicTo(
//         size.width * 0.6411026,
//         size.height * 0.5732603,
//         size.width * 0.6557812,
//         size.height * 0.5150010,
//         size.width * 0.6350327,
//         size.height * 0.4442819);
//     path_8.lineTo(size.width * 0.6350327, size.height * 0.4442675);
//     path_8.cubicTo(
//         size.width * 0.6400717,
//         size.height * 0.4400177,
//         size.width * 0.6459354,
//         size.height * 0.4366584,
//         size.width * 0.6527785,
//         size.height * 0.4344574);
//     path_8.cubicTo(
//         size.width * 0.6567864,
//         size.height * 0.4521879,
//         size.width * 0.6618898,
//         size.height * 0.4711419,
//         size.width * 0.6648925,
//         size.height * 0.4778026);
//     path_8.cubicTo(
//         size.width * 0.6650729,
//         size.height * 0.4782442,
//         size.width * 0.6653951,
//         size.height * 0.4788958,
//         size.width * 0.6657689,
//         size.height * 0.4797139);
//     path_8.cubicTo(
//         size.width * 0.6800222,
//         size.height * 0.5099476,
//         size.width * 0.7072530,
//         size.height * 0.5812893,
//         size.width * 0.6873679,
//         size.height * 0.6521676);
//     path_8.close();

//     Paint paint8Fill = Paint()..style = PaintingStyle.fill;
//     paint8Fill.color = randomColor().withOpacity(1.0);
//     canvas.drawPath(path_8, paint8Fill);

//     Path path_9 = Path();
//     path_9.moveTo(size.width * 0.3778288, size.height * 0.6660682);
//     path_9.cubicTo(
//         size.width * 0.3764498,
//         size.height * 0.6796936,
//         size.width * 0.3687948,
//         size.height * 0.6873751,
//         size.width * 0.3529821,
//         size.height * 0.6909878);
//     path_9.cubicTo(
//         size.width * 0.3529563,
//         size.height * 0.6910023,
//         size.width * 0.3529306,
//         size.height * 0.6910023,
//         size.width * 0.3529048,
//         size.height * 0.6910312);
//     path_9.cubicTo(
//         size.width * 0.3467576,
//         size.height * 0.6923923,
//         size.width * 0.3415769,
//         size.height * 0.6924647,
//         size.width * 0.3371952,
//         size.height * 0.6912412);
//     path_9.cubicTo(
//         size.width * 0.3252874,
//         size.height * 0.6879253,
//         size.width * 0.3208542,
//         size.height * 0.6753062,
//         size.width * 0.3162019,
//         size.height * 0.6619414);
//     path_9.cubicTo(
//         size.width * 0.3150678,
//         size.height * 0.6587631,
//         size.width * 0.3139337,
//         size.height * 0.6554473,
//         size.width * 0.3126321,
//         size.height * 0.6522328);
//     path_9.cubicTo(
//         size.width * 0.3126321,
//         size.height * 0.6522183,
//         size.width * 0.3126321,
//         size.height * 0.6521893,
//         size.width * 0.3126063,
//         size.height * 0.6521749);
//     path_9.lineTo(size.width * 0.3126063, size.height * 0.6521604);
//     path_9.cubicTo(
//         size.width * 0.2981855,
//         size.height * 0.6010469,
//         size.width * 0.3058534,
//         size.height * 0.5398121,
//         size.width * 0.3342311,
//         size.height * 0.4796922);
//     path_9.cubicTo(
//         size.width * 0.3346049,
//         size.height * 0.4788813,
//         size.width * 0.3348884,
//         size.height * 0.4782442,
//         size.width * 0.3351075,
//         size.height * 0.4777953);
//     path_9.cubicTo(
//         size.width * 0.3382520,
//         size.height * 0.4708088,
//         size.width * 0.3436131,
//         size.height * 0.4504793,
//         size.width * 0.3472215,
//         size.height * 0.4344357);
//     path_9.cubicTo(
//         size.width * 0.3540646,
//         size.height * 0.4366584,
//         size.width * 0.3599155,
//         size.height * 0.4400177,
//         size.width * 0.3649673,
//         size.height * 0.4442602);
//     path_9.lineTo(size.width * 0.3649673, size.height * 0.4442747);
//     path_9.cubicTo(
//         size.width * 0.3442188,
//         size.height * 0.5150083,
//         size.width * 0.3588974,
//         size.height * 0.5732675,
//         size.width * 0.3696453,
//         size.height * 0.6157945);
//     path_9.cubicTo(
//         size.width * 0.3749291,
//         size.height * 0.6367901,
//         size.width * 0.3791175,
//         size.height * 0.6533839,
//         size.width * 0.3778288,
//         size.height * 0.6660609);
//     path_9.close();

//     Paint paint9Fill = Paint()..style = PaintingStyle.fill;
//     paint9Fill.color = randomColor().withOpacity(1.0);
//     canvas.drawPath(path_9, paint9Fill);

//     Path path_10 = Path();
//     path_10.moveTo(size.width * 0.4306408, size.height * 0.6987924);
//     path_10.cubicTo(
//         size.width * 0.4233595,
//         size.height * 0.7080739,
//         size.width * 0.4125599,
//         size.height * 0.7162550,
//         size.width * 0.3971596,
//         size.height * 0.7162550);
//     path_10.lineTo(size.width * 0.3967601, size.height * 0.7162550);
//     path_10.cubicTo(
//         size.width * 0.3766174,
//         size.height * 0.7160595,
//         size.width * 0.3726867,
//         size.height * 0.7064015,
//         size.width * 0.3695165,
//         size.height * 0.6986331);
//     path_10.cubicTo(
//         size.width * 0.3678282,
//         size.height * 0.6944774,
//         size.width * 0.3663462,
//         size.height * 0.6908937,
//         size.width * 0.3625960,
//         size.height * 0.6898873);
//     path_10.cubicTo(
//         size.width * 0.3615908,
//         size.height * 0.6896195,
//         size.width * 0.3604567,
//         size.height * 0.6895471,
//         size.width * 0.3591938,
//         size.height * 0.6896629);
//     path_10.cubicTo(
//         size.width * 0.3712820,
//         size.height * 0.6855072,
//         size.width * 0.3773004,
//         size.height * 0.6780646,
//         size.width * 0.3784989,
//         size.height * 0.6661044);
//     path_10.cubicTo(
//         size.width * 0.3797876,
//         size.height * 0.6533767,
//         size.width * 0.3755993,
//         size.height * 0.6367757,
//         size.width * 0.3702897,
//         size.height * 0.6157583);
//     path_10.cubicTo(
//         size.width * 0.3595933,
//         size.height * 0.5733182,
//         size.width * 0.3449405,
//         size.height * 0.5152182,
//         size.width * 0.3655343,
//         size.height * 0.4447236);
//     path_10.cubicTo(
//         size.width * 0.3866050,
//         size.height * 0.4629391,
//         size.width * 0.3932806,
//         size.height * 0.4968724,
//         size.width * 0.3993247,
//         size.height * 0.5275332);
//     path_10.cubicTo(
//         size.width * 0.4019150,
//         size.height * 0.5405433,
//         size.width * 0.4043121,
//         size.height * 0.5528366,
//         size.width * 0.4076628,
//         size.height * 0.5630665);
//     path_10.lineTo(size.width * 0.4076628, size.height * 0.5630810);
//     path_10.cubicTo(
//         size.width * 0.4076628,
//         size.height * 0.5630810,
//         size.width * 0.4075854,
//         size.height * 0.5631534,
//         size.width * 0.4076112,
//         size.height * 0.5631968);
//     path_10.cubicTo(
//         size.width * 0.4225862,
//         size.height * 0.6077800,
//         size.width * 0.4210784,
//         size.height * 0.6399829,
//         size.width * 0.4200732,
//         size.height * 0.6612754);
//     path_10.cubicTo(
//         size.width * 0.4191453,
//         size.height * 0.6807941,
//         size.width * 0.4185912,
//         size.height * 0.6926168,
//         size.width * 0.4306279,
//         size.height * 0.6987851);
//     path_10.close();

//     Paint paint10Fill = Paint()..style = PaintingStyle.fill;
//     paint10Fill.color = randomColor().withOpacity(1.0);
//     canvas.drawPath(path_10, paint10Fill);

//     Path path_11 = Path();
//     path_11.moveTo(size.width * 0.6408062, size.height * 0.6896629);
//     path_11.cubicTo(
//         size.width * 0.6395433,
//         size.height * 0.6895471,
//         size.width * 0.6384092,
//         size.height * 0.6896195,
//         size.width * 0.6374040,
//         size.height * 0.6898873);
//     path_11.cubicTo(
//         size.width * 0.6336538,
//         size.height * 0.6908937,
//         size.width * 0.6321718,
//         size.height * 0.6944774,
//         size.width * 0.6304835,
//         size.height * 0.6986331);
//     path_11.cubicTo(
//         size.width * 0.6273133,
//         size.height * 0.7064015,
//         size.width * 0.6233826,
//         size.height * 0.7160667,
//         size.width * 0.6032399,
//         size.height * 0.7162550);
//     path_11.lineTo(size.width * 0.6028404, size.height * 0.7162550);
//     path_11.cubicTo(
//         size.width * 0.5874530,
//         size.height * 0.7162550,
//         size.width * 0.5766534,
//         size.height * 0.7080739,
//         size.width * 0.5693592,
//         size.height * 0.6987924);
//     path_11.cubicTo(
//         size.width * 0.5813959,
//         size.height * 0.6926240,
//         size.width * 0.5808418,
//         size.height * 0.6808013,
//         size.width * 0.5799139,
//         size.height * 0.6612826);
//     path_11.cubicTo(
//         size.width * 0.5789087,
//         size.height * 0.6399902,
//         size.width * 0.5774009,
//         size.height * 0.6077872,
//         size.width * 0.5923759,
//         size.height * 0.5632041);
//     path_11.cubicTo(
//         size.width * 0.5924017,
//         size.height * 0.5631606,
//         size.width * 0.5923759,
//         size.height * 0.5631172,
//         size.width * 0.5923243,
//         size.height * 0.5630882);
//     path_11.lineTo(size.width * 0.5923243, size.height * 0.5630738);
//     path_11.cubicTo(
//         size.width * 0.5956750,
//         size.height * 0.5528511,
//         size.width * 0.5980850,
//         size.height * 0.5405505,
//         size.width * 0.6006624,
//         size.height * 0.5275405);
//     path_11.cubicTo(
//         size.width * 0.6067065,
//         size.height * 0.4968796,
//         size.width * 0.6133821,
//         size.height * 0.4629319,
//         size.width * 0.6344786,
//         size.height * 0.4447163);
//     path_11.cubicTo(
//         size.width * 0.6550467,
//         size.height * 0.5152254,
//         size.width * 0.6403938,
//         size.height * 0.5733254,
//         size.width * 0.6296974,
//         size.height * 0.6157655);
//     path_11.cubicTo(
//         size.width * 0.6243879,
//         size.height * 0.6367757,
//         size.width * 0.6201866,
//         size.height * 0.6533839,
//         size.width * 0.6214882,
//         size.height * 0.6661116);
//     path_11.cubicTo(
//         size.width * 0.6226738,
//         size.height * 0.6780646,
//         size.width * 0.6286922,
//         size.height * 0.6855145,
//         size.width * 0.6407933,
//         size.height * 0.6896702);
//     path_11.close();

//     Paint paint11Fill = Paint()..style = PaintingStyle.fill;
//     paint11Fill.color = randomColor().withOpacity(1.0);
//     canvas.drawPath(path_11, paint11Fill);

//     Path path_12 = Path();
//     path_12.moveTo(size.width * 0.5792567, size.height * 0.6612899);
//     path_12.cubicTo(
//         size.width * 0.5801845,
//         size.height * 0.6806276,
//         size.width * 0.5807387,
//         size.height * 0.6923489,
//         size.width * 0.5690628,
//         size.height * 0.6984304);
//     path_12.cubicTo(
//         size.width * 0.5598484,
//         size.height * 0.6865353,
//         size.width * 0.5563689,
//         size.height * 0.6729895,
//         size.width * 0.5563044,
//         size.height * 0.6727578);
//     path_12.cubicTo(
//         size.width * 0.5563044,
//         size.height * 0.6727433,
//         size.width * 0.5562787,
//         size.height * 0.6727289,
//         size.width * 0.5562529,
//         size.height * 0.6727144);
//     path_12.lineTo(size.width * 0.5562529, size.height * 0.6726999);
//     path_12.cubicTo(
//         size.width * 0.5552735,
//         size.height * 0.6686745,
//         size.width * 0.5541394,
//         size.height * 0.6646492,
//         size.width * 0.5528249,
//         size.height * 0.6606238);
//     path_12.cubicTo(
//         size.width * 0.5528507,
//         size.height * 0.6606093,
//         size.width * 0.5528507,
//         size.height * 0.6605803,
//         size.width * 0.5528507,
//         size.height * 0.6605659);
//     path_12.cubicTo(
//         size.width * 0.5527218,
//         size.height * 0.6602256,
//         size.width * 0.5526187,
//         size.height * 0.6598853,
//         size.width * 0.5524769,
//         size.height * 0.6595595);
//     path_12.lineTo(size.width * 0.5523996, size.height * 0.6592917);
//     path_12.cubicTo(
//         size.width * 0.5517939,
//         size.height * 0.6574093,
//         size.width * 0.5511367,
//         size.height * 0.6555342,
//         size.width * 0.5504407,
//         size.height * 0.6536518);
//     path_12.cubicTo(
//         size.width * 0.5504150,
//         size.height * 0.6536084,
//         size.width * 0.5504150,
//         size.height * 0.6535504,
//         size.width * 0.5503892,
//         size.height * 0.6535070);
//     path_12.cubicTo(
//         size.width * 0.5503634,
//         size.height * 0.6534056,
//         size.width * 0.5503119,
//         size.height * 0.6532970,
//         size.width * 0.5502861,
//         size.height * 0.6531957);
//     path_12.cubicTo(
//         size.width * 0.5418321,
//         size.height * 0.6266760,
//         size.width * 0.5462782,
//         size.height * 0.6236715,
//         size.width * 0.5559565,
//         size.height * 0.6170760);
//     path_12.cubicTo(
//         size.width * 0.5644621,
//         size.height * 0.6113058,
//         size.width * 0.5768467,
//         size.height * 0.6028858,
//         size.width * 0.5882520,
//         size.height * 0.5742232);
//     path_12.cubicTo(
//         size.width * 0.5770014,
//         size.height * 0.6131592,
//         size.width * 0.5783288,
//         size.height * 0.6417784,
//         size.width * 0.5792438,
//         size.height * 0.6612971);
//     path_12.close();

//     Paint paint12Fill = Paint()..style = PaintingStyle.fill;
//     paint12Fill.color = randomColor().withOpacity(1.0);
//     canvas.drawPath(path_12, paint12Fill);

//     Path path_13 = Path();
//     path_13.moveTo(size.width * 0.4497010, size.height * 0.6531957);
//     path_13.lineTo(size.width * 0.4497010, size.height * 0.6532102);
//     path_13.lineTo(size.width * 0.4496237, size.height * 0.6534636);
//     path_13.cubicTo(
//         size.width * 0.4495979,
//         size.height * 0.6535215,
//         size.width * 0.4495721,
//         size.height * 0.6535649,
//         size.width * 0.4495721,
//         size.height * 0.6536228);
//     path_13.arcToPoint(Offset(size.width * 0.4474071, size.height * 0.6598202),
//         radius:
//             Radius.elliptical(size.width * 0.3671581, size.height * 0.2062639),
//         rotation: 0,
//         largeArc: false,
//         clockwise: false);
//     path_13.cubicTo(
//         size.width * 0.4474071,
//         size.height * 0.6598491,
//         size.width * 0.4473813,
//         size.height * 0.6598926,
//         size.width * 0.4473813,
//         size.height * 0.6599215);
//     path_13.lineTo(size.width * 0.4471493, size.height * 0.6606021);
//     path_13.lineTo(size.width * 0.4471493, size.height * 0.6606165);
//     path_13.cubicTo(
//         size.width * 0.4457704,
//         size.height * 0.6648374,
//         size.width * 0.4446621,
//         size.height * 0.6688121,
//         size.width * 0.4437213,
//         size.height * 0.6727216);
//     path_13.lineTo(size.width * 0.4437213, size.height * 0.6727361);
//     path_13.lineTo(size.width * 0.4436956, size.height * 0.6727506);
//     path_13.cubicTo(
//         size.width * 0.4436956,
//         size.height * 0.6727506,
//         size.width * 0.4436698,
//         size.height * 0.6728375,
//         size.width * 0.4436440,
//         size.height * 0.6729895);
//     path_13.cubicTo(
//         size.width * 0.4436440,
//         size.height * 0.6730184,
//         size.width * 0.4436182,
//         size.height * 0.6730474,
//         size.width * 0.4436182,
//         size.height * 0.6730764);
//     path_13.cubicTo(
//         size.width * 0.4430125,
//         size.height * 0.6752556,
//         size.width * 0.4393654,
//         size.height * 0.6875199,
//         size.width * 0.4309500,
//         size.height * 0.6984232);
//     path_13.cubicTo(
//         size.width * 0.4192742,
//         size.height * 0.6923417,
//         size.width * 0.4198283,
//         size.height * 0.6806203,
//         size.width * 0.4207562,
//         size.height * 0.6612826);
//     path_13.cubicTo(
//         size.width * 0.4216841,
//         size.height * 0.6417639,
//         size.width * 0.4229986,
//         size.height * 0.6131447,
//         size.width * 0.4117480,
//         size.height * 0.5742087);
//     path_13.cubicTo(
//         size.width * 0.4231533,
//         size.height * 0.6028713,
//         size.width * 0.4355379,
//         size.height * 0.6112913,
//         size.width * 0.4440435,
//         size.height * 0.6170615);
//     path_13.cubicTo(
//         size.width * 0.4537347,
//         size.height * 0.6236642,
//         size.width * 0.4581679,
//         size.height * 0.6266688,
//         size.width * 0.4497139,
//         size.height * 0.6531812);
//     path_13.close();

//     Paint paint13Fill = Paint()..style = PaintingStyle.fill;
//     paint13Fill.color = randomColor().withOpacity(1.0);
//     canvas.drawPath(path_13, paint13Fill);

//     Path path_14 = Path();
//     path_14.moveTo(size.width * 0.4984922, size.height * 0.5368582);
//     path_14.cubicTo(
//         size.width * 0.4968297,
//         size.height * 0.5379804,
//         size.width * 0.4966751,
//         size.height * 0.5419623,
//         size.width * 0.4963787,
//         size.height * 0.5497741);
//     path_14.cubicTo(
//         size.width * 0.4963014,
//         size.height * 0.5521271,
//         size.width * 0.4961983,
//         size.height * 0.5548203,
//         size.width * 0.4960307,
//         size.height * 0.5578249);
//     path_14.cubicTo(
//         size.width * 0.4939430,
//         size.height * 0.5767064,
//         size.width * 0.4789422,
//         size.height * 0.5998813,
//         size.width * 0.4690448,
//         size.height * 0.6152081);
//     path_14.cubicTo(
//         size.width * 0.4658488,
//         size.height * 0.6201095,
//         size.width * 0.4631295,
//         size.height * 0.6243376,
//         size.width * 0.4614671,
//         size.height * 0.6274000);
//     path_14.cubicTo(
//         size.width * 0.4580133,
//         size.height * 0.6338073,
//         size.width * 0.4549977,
//         size.height * 0.6400698,
//         size.width * 0.4523816,
//         size.height * 0.6463540);
//     path_14.cubicTo(
//         size.width * 0.4579489,
//         size.height * 0.6259593,
//         size.width * 0.4534383,
//         size.height * 0.6228968,
//         size.width * 0.4445074,
//         size.height * 0.6168298);
//     path_14.cubicTo(
//         size.width * 0.4350611,
//         size.height * 0.6104080,
//         size.width * 0.4207433,
//         size.height * 0.6006994,
//         size.width * 0.4083329,
//         size.height * 0.5631100);
//     path_14.cubicTo(
//         size.width * 0.4049564,
//         size.height * 0.5528873,
//         size.width * 0.4025207,
//         size.height * 0.5405433,
//         size.width * 0.3999691,
//         size.height * 0.5274753);
//     path_14.cubicTo(
//         size.width * 0.3923914,
//         size.height * 0.4891185,
//         size.width * 0.3838600,
//         size.height * 0.4456575,
//         size.width * 0.3472988,
//         size.height * 0.4340303);
//     path_14.cubicTo(
//         size.width * 0.3474535,
//         size.height * 0.4333497,
//         size.width * 0.3476210,
//         size.height * 0.4326547,
//         size.width * 0.3477499,
//         size.height * 0.4319742);
//     path_14.cubicTo(
//         size.width * 0.3479303,
//         size.height * 0.4319886,
//         size.width * 0.3480978,
//         size.height * 0.4320031,
//         size.width * 0.3482783,
//         size.height * 0.4320321);
//     path_14.cubicTo(
//         size.width * 0.3668875,
//         size.height * 0.4343126,
//         size.width * 0.4245837,
//         size.height * 0.4445788,
//         size.width * 0.4462859,
//         size.height * 0.4857519);
//     path_14.cubicTo(
//         size.width * 0.4651142,
//         size.height * 0.5214445,
//         size.width * 0.4752693,
//         size.height * 0.5363586,
//         size.width * 0.4984793,
//         size.height * 0.5368509);
//     path_14.close();

//     Paint paint14Fill = Paint()..style = PaintingStyle.fill;
//     paint14Fill.color = randomColor().withOpacity(1.0);
//     canvas.drawPath(path_14, paint14Fill);

//     Path path_15 = Path();
//     path_15.moveTo(size.width * 0.6526625, size.height * 0.4340520);
//     path_15.cubicTo(
//         size.width * 0.6161271,
//         size.height * 0.4456865,
//         size.width * 0.6075442,
//         size.height * 0.4891474,
//         size.width * 0.6000180,
//         size.height * 0.5274826);
//     path_15.cubicTo(
//         size.width * 0.5974535,
//         size.height * 0.5405505,
//         size.width * 0.5950307,
//         size.height * 0.5528873,
//         size.width * 0.5916542,
//         size.height * 0.5631172);
//     path_15.cubicTo(
//         size.width * 0.5792438,
//         size.height * 0.6007066,
//         size.width * 0.5649389,
//         size.height * 0.6104080,
//         size.width * 0.5554797,
//         size.height * 0.6168370);
//     path_15.cubicTo(
//         size.width * 0.5465617,
//         size.height * 0.6229041,
//         size.width * 0.5420125,
//         size.height * 0.6259810,
//         size.width * 0.5476055,
//         size.height * 0.6464336);
//     path_15.arcToPoint(Offset(size.width * 0.5385200, size.height * 0.6274000),
//         radius:
//             Radius.elliptical(size.width * 0.5181582, size.height * 0.2910935),
//         rotation: 0,
//         largeArc: false,
//         clockwise: false);
//     path_15.cubicTo(
//         size.width * 0.5368833,
//         size.height * 0.6243376,
//         size.width * 0.5341384,
//         size.height * 0.6201167,
//         size.width * 0.5309681,
//         size.height * 0.6152370);
//     path_15.cubicTo(
//         size.width * 0.5210449,
//         size.height * 0.5998885,
//         size.width * 0.5060441,
//         size.height * 0.5767209,
//         size.width * 0.5039822,
//         size.height * 0.5578176);
//     path_15.cubicTo(
//         size.width * 0.5038017,
//         size.height * 0.5548131,
//         size.width * 0.5037244,
//         size.height * 0.5521343,
//         size.width * 0.5036084,
//         size.height * 0.5497814);
//     path_15.cubicTo(
//         size.width * 0.5033120,
//         size.height * 0.5419695,
//         size.width * 0.5031574,
//         size.height * 0.5379731,
//         size.width * 0.5014949,
//         size.height * 0.5368509);
//     path_15.cubicTo(
//         size.width * 0.5247049,
//         size.height * 0.5363659,
//         size.width * 0.5348729,
//         size.height * 0.5214445,
//         size.width * 0.5536883,
//         size.height * 0.4857519);
//     path_15.cubicTo(
//         size.width * 0.5753905,
//         size.height * 0.4445860,
//         size.width * 0.6330868,
//         size.height * 0.4343126,
//         size.width * 0.6516960,
//         size.height * 0.4320321);
//     path_15.cubicTo(
//         size.width * 0.6518506,
//         size.height * 0.4320176,
//         size.width * 0.6520181,
//         size.height * 0.4319886,
//         size.width * 0.6521728,
//         size.height * 0.4319742);
//     path_15.cubicTo(
//         size.width * 0.6523274,
//         size.height * 0.4326547,
//         size.width * 0.6524950,
//         size.height * 0.4333497,
//         size.width * 0.6526496,
//         size.height * 0.4340448);
//     path_15.close();

//     Paint paint15Fill = Paint()..style = PaintingStyle.fill;
//     paint15Fill.color = randomColor().withOpacity(1.0);
//     canvas.drawPath(path_15, paint15Fill);

//     Path path_16 = Path();
//     path_16.moveTo(size.width * 0.9557838, size.height * 0.4348556);
//     path_16.cubicTo(
//         size.width * 0.9540956,
//         size.height * 0.4410530,
//         size.width * 0.9482061,
//         size.height * 0.4462512,
//         size.width * 0.9403964,
//         size.height * 0.4484376);
//     path_16.cubicTo(
//         size.width * 0.9398165,
//         size.height * 0.4485969,
//         size.width * 0.9392108,
//         size.height * 0.4487490,
//         size.width * 0.9385793,
//         size.height * 0.4488648);
//     path_16.cubicTo(
//         size.width * 0.9083200,
//         size.height * 0.4101822,
//         size.width * 0.8642842,
//         size.height * 0.3753367,
//         size.width * 0.8217692,
//         size.height * 0.3429382);
//     path_16.cubicTo(
//         size.width * 0.8270787,
//         size.height * 0.3393545,
//         size.width * 0.8299783,
//         size.height * 0.3343083,
//         size.width * 0.8303779,
//         size.height * 0.3280096);
//     path_16.cubicTo(
//         size.width * 0.8310093,
//         size.height * 0.3172801,
//         size.width * 0.8245399,
//         size.height * 0.3028800,
//         size.width * 0.8111243,
//         size.height * 0.2851568);
//     path_16.cubicTo(
//         size.width * 0.8170138,
//         size.height * 0.2917741,
//         size.width * 0.8238440,
//         size.height * 0.3001144,
//         size.width * 0.8318728,
//         size.height * 0.3107136);
//     path_16.cubicTo(
//         size.width * 0.8354941,
//         size.height * 0.3156005,
//         size.width * 0.8402108,
//         size.height * 0.3183806,
//         size.width * 0.8488453,
//         size.height * 0.3234268);
//     path_16.cubicTo(
//         size.width * 0.8551343,
//         size.height * 0.3271119,
//         size.width * 0.8637301,
//         size.height * 0.3321581,
//         size.width * 0.8757024,
//         size.height * 0.3402233);
//     path_16.cubicTo(
//         size.width * 0.8958194,
//         size.height * 0.3537763,
//         size.width * 0.9162843,
//         size.height * 0.3822073,
//         size.width * 0.9327285,
//         size.height * 0.4050563);
//     path_16.cubicTo(
//         size.width * 0.9395201,
//         size.height * 0.4144826,
//         size.width * 0.9459250,
//         size.height * 0.4233877,
//         size.width * 0.9514537,
//         size.height * 0.4300773);
//     path_16.cubicTo(
//         size.width * 0.9530646,
//         size.height * 0.4317063,
//         size.width * 0.9544951,
//         size.height * 0.4333063,
//         size.width * 0.9557838,
//         size.height * 0.4348556);
//     path_16.close();

//     Paint paint16Fill = Paint()..style = PaintingStyle.fill;
//     paint16Fill.color = randomColor().withOpacity(1.0);
//     canvas.drawPath(path_16, paint16Fill);

//     Path path_17 = Path();
//     path_17.moveTo(size.width * 0.1696221, size.height * 0.3280169);
//     path_17.cubicTo(
//         size.width * 0.1700217,
//         size.height * 0.3343228,
//         size.width * 0.1729213,
//         size.height * 0.3393690,
//         size.width * 0.1782308,
//         size.height * 0.3429455);
//     path_17.cubicTo(
//         size.width * 0.1357286,
//         size.height * 0.3753367,
//         size.width * 0.09167998,
//         size.height * 0.4101894,
//         size.width * 0.06142069,
//         size.height * 0.4488720);
//     path_17.cubicTo(
//         size.width * 0.06078922,
//         size.height * 0.4487562,
//         size.width * 0.06018351,
//         size.height * 0.4486042,
//         size.width * 0.05960359,
//         size.height * 0.4484449);
//     path_17.cubicTo(
//         size.width * 0.05181968,
//         size.height * 0.4462729,
//         size.width * 0.04590443,
//         size.height * 0.4410747,
//         size.width * 0.04419042,
//         size.height * 0.4348774);
//     path_17.lineTo(size.width * 0.04419042, size.height * 0.4348339);
//     path_17.cubicTo(
//         size.width * 0.04553070,
//         size.height * 0.4332194,
//         size.width * 0.04698696,
//         size.height * 0.4316556,
//         size.width * 0.04854632,
//         size.height * 0.4300701);
//     path_17.cubicTo(
//         size.width * 0.05408784,
//         size.height * 0.4233949,
//         size.width * 0.06050570,
//         size.height * 0.4144754,
//         size.width * 0.06729728,
//         size.height * 0.4050346);
//     path_17.cubicTo(
//         size.width * 0.08374143,
//         size.height * 0.3822001,
//         size.width * 0.1041806,
//         size.height * 0.3537908,
//         size.width * 0.1242976,
//         size.height * 0.3402378);
//     path_17.cubicTo(
//         size.width * 0.1362312,
//         size.height * 0.3321725,
//         size.width * 0.1448399,
//         size.height * 0.3271408,
//         size.width * 0.1511547,
//         size.height * 0.3234557);
//     path_17.cubicTo(
//         size.width * 0.1597634,
//         size.height * 0.3184095,
//         size.width * 0.1645188,
//         size.height * 0.3156150,
//         size.width * 0.1681272,
//         size.height * 0.3107425);
//     path_17.cubicTo(
//         size.width * 0.1756018,
//         size.height * 0.3008601,
//         size.width * 0.1824965,
//         size.height * 0.2923315,
//         size.width * 0.1887726,
//         size.height * 0.2853016);
//     path_17.cubicTo(
//         size.width * 0.1754343,
//         size.height * 0.3029669,
//         size.width * 0.1690036,
//         size.height * 0.3173236,
//         size.width * 0.1696350,
//         size.height * 0.3280241);
//     path_17.close();

//     Paint paint17Fill = Paint()..style = PaintingStyle.fill;
//     paint17Fill.color = randomColor().withOpacity(1.0);
//     canvas.drawPath(path_17, paint17Fill);

//     Path path_18 = Path();
//     path_18.moveTo(size.width * 0.9379607, size.height * 0.4490023);
//     path_18.cubicTo(
//         size.width * 0.9314140,
//         size.height * 0.4503055,
//         size.width * 0.9232306,
//         size.height * 0.4499508,
//         size.width * 0.9150214,
//         size.height * 0.4479815);
//     path_18.cubicTo(
//         size.width * 0.9109877,
//         size.height * 0.4437317,
//         size.width * 0.9049564,
//         size.height * 0.4392937,
//         size.width * 0.9048276,
//         size.height * 0.4392213);
//     path_18.cubicTo(
//         size.width * 0.8928166,
//         size.height * 0.4321769,
//         size.width * 0.8831254,
//         size.height * 0.4280357,
//         size.width * 0.8737564,
//         size.height * 0.4240248);
//     path_18.cubicTo(
//         size.width * 0.8606114,
//         size.height * 0.4183994,
//         size.width * 0.8482009,
//         size.height * 0.4130709,
//         size.width * 0.8300557,
//         size.height * 0.4003938);
//     path_18.cubicTo(
//         size.width * 0.8103382,
//         size.height * 0.3865874,
//         size.width * 0.8046549,
//         size.height * 0.3798978,
//         size.width * 0.7986365,
//         size.height * 0.3728099);
//     path_18.cubicTo(
//         size.width * 0.7949894,
//         size.height * 0.3685167,
//         size.width * 0.7912392,
//         size.height * 0.3640931,
//         size.width * 0.7842672,
//         size.height * 0.3578017);
//     path_18.cubicTo(
//         size.width * 0.7789577,
//         size.height * 0.3535229,
//         size.width * 0.7669210,
//         size.height * 0.3443500,
//         size.width * 0.7544332,
//         size.height * 0.3350106);
//     path_18.cubicTo(
//         size.width * 0.7711480,
//         size.height * 0.3450595,
//         size.width * 0.7868833,
//         size.height * 0.3487446,
//         size.width * 0.7992165,
//         size.height * 0.3487446);
//     path_18.cubicTo(
//         size.width * 0.7997706,
//         size.height * 0.3487446,
//         size.width * 0.8002732,
//         size.height * 0.3487156,
//         size.width * 0.8008016,
//         size.height * 0.3487012);
//     path_18.lineTo(size.width * 0.8009047, size.height * 0.3487012);
//     path_18.cubicTo(
//         size.width * 0.8009047,
//         size.height * 0.3487012,
//         size.width * 0.8009820,
//         size.height * 0.3486867,
//         size.width * 0.8010336,
//         size.height * 0.3486867);
//     path_18.cubicTo(
//         size.width * 0.8053121,
//         size.height * 0.3485708,
//         size.width * 0.8091396,
//         size.height * 0.3480206,
//         size.width * 0.8123872,
//         size.height * 0.3471156);
//     path_18.cubicTo(
//         size.width * 0.8158668,
//         size.height * 0.3461527,
//         size.width * 0.8188566,
//         size.height * 0.3448640,
//         size.width * 0.8213439,
//         size.height * 0.3432351);
//     path_18.cubicTo(
//         size.width * 0.8637688,
//         size.height * 0.3755828,
//         size.width * 0.9077530,
//         size.height * 0.4103994,
//         size.width * 0.9379607,
//         size.height * 0.4489951);
//     path_18.close();

//     Paint paint18Fill = Paint()..style = PaintingStyle.fill;
//     paint18Fill.color = randomColor().withOpacity(1.0);
//     canvas.drawPath(path_18, paint18Fill);

//     Path path_19 = Path();
//     path_19.moveTo(size.width * 0.2454766, size.height * 0.3350540);
//     path_19.cubicTo(
//         size.width * 0.2331177,
//         size.height * 0.3442704,
//         size.width * 0.2209779,
//         size.height * 0.3535808,
//         size.width * 0.2156941,
//         size.height * 0.3578017);
//     path_19.cubicTo(
//         size.width * 0.2087479,
//         size.height * 0.3640931,
//         size.width * 0.2049977,
//         size.height * 0.3685167,
//         size.width * 0.2013635,
//         size.height * 0.3727882);
//     path_19.cubicTo(
//         size.width * 0.1953709,
//         size.height * 0.3798905,
//         size.width * 0.1896876,
//         size.height * 0.3865802,
//         size.width * 0.1699443,
//         size.height * 0.4003866);
//     path_19.cubicTo(
//         size.width * 0.1518377,
//         size.height * 0.4130709,
//         size.width * 0.1394273,
//         size.height * 0.4183777,
//         size.width * 0.1262694,
//         size.height * 0.4240031);
//     path_19.cubicTo(
//         size.width * 0.1169004,
//         size.height * 0.4280140,
//         size.width * 0.1072091,
//         size.height * 0.4321552,
//         size.width * 0.09514666,
//         size.height * 0.4392285);
//     path_19.cubicTo(
//         size.width * 0.09350997,
//         size.height * 0.4404086,
//         size.width * 0.08849683,
//         size.height * 0.4442747,
//         size.width * 0.08500438,
//         size.height * 0.4479743);
//     path_19.cubicTo(
//         size.width * 0.07679520,
//         size.height * 0.4499435,
//         size.width * 0.06858601,
//         size.height * 0.4502983,
//         size.width * 0.06203928,
//         size.height * 0.4489951);
//     path_19.cubicTo(
//         size.width * 0.09224702,
//         size.height * 0.4103994,
//         size.width * 0.1362312,
//         size.height * 0.3755828,
//         size.width * 0.1786561,
//         size.height * 0.3432351);
//     path_19.cubicTo(
//         size.width * 0.1811434,
//         size.height * 0.3448640,
//         size.width * 0.1841203,
//         size.height * 0.3461527,
//         size.width * 0.1876128,
//         size.height * 0.3471156);
//     path_19.cubicTo(
//         size.width * 0.1908604,
//         size.height * 0.3480206,
//         size.width * 0.1947136,
//         size.height * 0.3485636,
//         size.width * 0.1989664,
//         size.height * 0.3486867);
//     path_19.cubicTo(
//         size.width * 0.1990180,
//         size.height * 0.3486867,
//         size.width * 0.1990438,
//         size.height * 0.3487012,
//         size.width * 0.1990953,
//         size.height * 0.3487012);
//     path_19.lineTo(size.width * 0.1991984, size.height * 0.3487012);
//     path_19.cubicTo(
//         size.width * 0.1997268,
//         size.height * 0.3487156,
//         size.width * 0.2002294,
//         size.height * 0.3487446,
//         size.width * 0.2007578,
//         size.height * 0.3487446);
//     path_19.cubicTo(
//         size.width * 0.2130909,
//         size.height * 0.3487446,
//         size.width * 0.2288005,
//         size.height * 0.3450740,
//         size.width * 0.2454895,
//         size.height * 0.3350540);
//     path_19.close();

//     Paint paint19Fill = Paint()..style = PaintingStyle.fill;
//     paint19Fill.color = randomColor().withOpacity(1.0);
//     canvas.drawPath(path_19, paint19Fill);

//     Path path_20 = Path();
//     path_20.moveTo(size.width * 0.8121037, size.height * 0.3467754);
//     path_20.cubicTo(
//         size.width * 0.8097325,
//         size.height * 0.3474414,
//         size.width * 0.8070390,
//         size.height * 0.3479120,
//         size.width * 0.8040750,
//         size.height * 0.3481654);
//     path_20.cubicTo(
//         size.width * 0.8081989,
//         size.height * 0.3473401,
//         size.width * 0.8109181,
//         size.height * 0.3459790,
//         size.width * 0.8121810,
//         size.height * 0.3440966);
//     path_20.cubicTo(
//         size.width * 0.8152998,
//         size.height * 0.3394341,
//         size.width * 0.8084824,
//         size.height * 0.3330703,
//         size.width * 0.8060338,
//         size.height * 0.3310142);
//     path_20.cubicTo(
//         size.width * 0.8055828,
//         size.height * 0.3306304,
//         size.width * 0.8052735,
//         size.height * 0.3304060,
//         size.width * 0.8052090,
//         size.height * 0.3303481);
//     path_20.lineTo(size.width * 0.8051833, size.height * 0.3303336);
//     path_20.cubicTo(
//         size.width * 0.7960462,
//         size.height * 0.3220584,
//         size.width * 0.7861230,
//         size.height * 0.3141308,
//         size.width * 0.7765091,
//         size.height * 0.3064782);
//     path_20.cubicTo(
//         size.width * 0.7629388,
//         size.height * 0.2956763,
//         size.width * 0.7502449,
//         size.height * 0.2855840,
//         size.width * 0.7421388,
//         size.height * 0.2762445);
//     path_20.cubicTo(
//         size.width * 0.7421645,
//         size.height * 0.2762301,
//         size.width * 0.7421388,
//         size.height * 0.2762301,
//         size.width * 0.7421388,
//         size.height * 0.2762156);
//     path_20.cubicTo(
//         size.width * 0.7420872,
//         size.height * 0.2761721,
//         size.width * 0.7420614,
//         size.height * 0.2761287,
//         size.width * 0.7420099,
//         size.height * 0.2760853);
//     path_20.cubicTo(
//         size.width * 0.7333754,
//         size.height * 0.2660798,
//         size.width * 0.7300505,
//         size.height * 0.2569503,
//         size.width * 0.7365199,
//         size.height * 0.2487403);
//     path_20.cubicTo(
//         size.width * 0.7405279,
//         size.height * 0.2490081,
//         size.width * 0.7456828,
//         size.height * 0.2495077,
//         size.width * 0.7514949,
//         size.height * 0.2504416);
//     path_20.cubicTo(
//         size.width * 0.7515465,
//         size.height * 0.2504706,
//         size.width * 0.7516496,
//         size.height * 0.2504851,
//         size.width * 0.7517269,
//         size.height * 0.2504851);
//     path_20.lineTo(size.width * 0.7517784, size.height * 0.2504851);
//     path_20.cubicTo(
//         size.width * 0.7557348,
//         size.height * 0.2511511,
//         size.width * 0.7600134,
//         size.height * 0.2519910,
//         size.width * 0.7644466,
//         size.height * 0.2531059);
//     path_20.cubicTo(
//         size.width * 0.7695629,
//         size.height * 0.2544091,
//         size.width * 0.7745373,
//         size.height * 0.2559295,
//         size.width * 0.7790994,
//         size.height * 0.2576815);
//     path_20.lineTo(size.width * 0.7791252, size.height * 0.2576960);
//     path_20.lineTo(size.width * 0.7791510, size.height * 0.2576960);
//     path_20.cubicTo(
//         size.width * 0.7798340,
//         size.height * 0.2581521,
//         size.width * 0.7806330,
//         size.height * 0.2586299,
//         size.width * 0.7815222,
//         size.height * 0.2591584);
//     path_20.cubicTo(
//         size.width * 0.7858524,
//         size.height * 0.2617214,
//         size.width * 0.7932497,
//         size.height * 0.2660508,
//         size.width * 0.8061498,
//         size.height * 0.2796980);
//     path_20.cubicTo(
//         size.width * 0.8061498,
//         size.height * 0.2797124,
//         size.width * 0.8061498,
//         size.height * 0.2797269,
//         size.width * 0.8061756,
//         size.height * 0.2797414);
//     path_20.lineTo(size.width * 0.8061756, size.height * 0.2797704);
//     path_20.cubicTo(
//         size.width * 0.8455462,
//         size.height * 0.3286178,
//         size.width * 0.8267694,
//         size.height * 0.3427210,
//         size.width * 0.8120908,
//         size.height * 0.3467754);
//     path_20.close();

//     Paint paint20Fill = Paint()..style = PaintingStyle.fill;
//     paint20Fill.color = randomColor().withOpacity(1.0);
//     canvas.drawPath(path_20, paint20Fill);

//     Path path_21 = Path();
//     path_21.moveTo(size.width * 0.2579901, size.height * 0.2760853);
//     path_21.cubicTo(
//         size.width * 0.2579386,
//         size.height * 0.2761287,
//         size.width * 0.2579128,
//         size.height * 0.2761721,
//         size.width * 0.2578612,
//         size.height * 0.2762156);
//     path_21.cubicTo(
//         size.width * 0.2578612,
//         size.height * 0.2762301,
//         size.width * 0.2578355,
//         size.height * 0.2762301,
//         size.width * 0.2578612,
//         size.height * 0.2762445);
//     path_21.cubicTo(
//         size.width * 0.2497551,
//         size.height * 0.2855840,
//         size.width * 0.2370612,
//         size.height * 0.2956763,
//         size.width * 0.2234909,
//         size.height * 0.3064782);
//     path_21.cubicTo(
//         size.width * 0.2138770,
//         size.height * 0.3141453,
//         size.width * 0.2039280,
//         size.height * 0.3220729,
//         size.width * 0.1947910,
//         size.height * 0.3303481);
//     path_21.cubicTo(
//         size.width * 0.1947394,
//         size.height * 0.3303915,
//         size.width * 0.1944946,
//         size.height * 0.3305870,
//         size.width * 0.1941079,
//         size.height * 0.3308838);
//     path_21.cubicTo(
//         size.width * 0.1940564,
//         size.height * 0.3309128,
//         size.width * 0.1940306,
//         size.height * 0.3309562,
//         size.width * 0.1939791,
//         size.height * 0.3309997);
//     path_21.lineTo(size.width * 0.1939791, size.height * 0.3310286);
//     path_21.cubicTo(
//         size.width * 0.1939791,
//         size.height * 0.3310286,
//         size.width * 0.1939533,
//         size.height * 0.3310286,
//         size.width * 0.1939533,
//         size.height * 0.3310431);
//     path_21.cubicTo(
//         size.width * 0.1914661,
//         size.height * 0.3331282,
//         size.width * 0.1847131,
//         size.height * 0.3394486,
//         size.width * 0.1878318,
//         size.height * 0.3440966);
//     path_21.cubicTo(
//         size.width * 0.1890948,
//         size.height * 0.3459790,
//         size.width * 0.1918140,
//         size.height * 0.3473401,
//         size.width * 0.1959379,
//         size.height * 0.3481654);
//     path_21.cubicTo(
//         size.width * 0.1929868,
//         size.height * 0.3479120,
//         size.width * 0.1902933,
//         size.height * 0.3474269,
//         size.width * 0.1879092,
//         size.height * 0.3467754);
//     path_21.cubicTo(
//         size.width * 0.1732306,
//         size.height * 0.3427210,
//         size.width * 0.1544538,
//         size.height * 0.3286178,
//         size.width * 0.1938244,
//         size.height * 0.2797704);
//     path_21.cubicTo(
//         size.width * 0.1938244,
//         size.height * 0.2797559,
//         size.width * 0.1938244,
//         size.height * 0.2797414,
//         size.width * 0.1938502,
//         size.height * 0.2797269);
//     path_21.lineTo(size.width * 0.1938502, size.height * 0.2797124);
//     path_21.cubicTo(
//         size.width * 0.2066859,
//         size.height * 0.2661015,
//         size.width * 0.2140703,
//         size.height * 0.2617358,
//         size.width * 0.2185164,
//         size.height * 0.2591295);
//     path_21.cubicTo(
//         size.width * 0.2194443,
//         size.height * 0.2585937,
//         size.width * 0.2202304,
//         size.height * 0.2581231,
//         size.width * 0.2209392,
//         size.height * 0.2576670);
//     path_21.cubicTo(
//         size.width * 0.2255013,
//         size.height * 0.2559367,
//         size.width * 0.2304500,
//         size.height * 0.2544091,
//         size.width * 0.2355663,
//         size.height * 0.2531059);
//     path_21.cubicTo(
//         size.width * 0.2400253,
//         size.height * 0.2519982,
//         size.width * 0.2443038,
//         size.height * 0.2511367,
//         size.width * 0.2482860,
//         size.height * 0.2504851);
//     path_21.cubicTo(
//         size.width * 0.2483633,
//         size.height * 0.2504851,
//         size.width * 0.2484664,
//         size.height * 0.2504706,
//         size.width * 0.2485180,
//         size.height * 0.2504416);
//     path_21.cubicTo(
//         size.width * 0.2543301,
//         size.height * 0.2495077,
//         size.width * 0.2594721,
//         size.height * 0.2490081,
//         size.width * 0.2634930,
//         size.height * 0.2487403);
//     path_21.cubicTo(
//         size.width * 0.2699624,
//         size.height * 0.2569503,
//         size.width * 0.2666375,
//         size.height * 0.2660798,
//         size.width * 0.2580030,
//         size.height * 0.2760853);
//     path_21.close();

//     Paint paint21Fill = Paint()..style = PaintingStyle.fill;
//     paint21Fill.color = randomColor().withOpacity(1.0);
//     canvas.drawPath(path_21, paint21Fill);

//     Path path_22 = Path();
//     path_22.moveTo(size.width * 0.8115496, size.height * 0.3439808);
//     path_22.cubicTo(
//         size.width * 0.8100933,
//         size.height * 0.3461672,
//         size.width * 0.8064591,
//         size.height * 0.3476369,
//         size.width * 0.8007500,
//         size.height * 0.3483464);
//     path_22.cubicTo(
//         size.width * 0.7869993,
//         size.height * 0.3487012,
//         size.width * 0.7685448,
//         size.height * 0.3443066,
//         size.width * 0.7491108,
//         size.height * 0.3310214);
//     path_22.cubicTo(
//         size.width * 0.7491108,
//         size.height * 0.3310214,
//         size.width * 0.7490850,
//         size.height * 0.3310214,
//         size.width * 0.7490592,
//         size.height * 0.3310069);
//     path_22.lineTo(size.width * 0.7489819, size.height * 0.3309635);
//     path_22.cubicTo(
//         size.width * 0.7343033,
//         size.height * 0.3200168,
//         size.width * 0.7201531,
//         size.height * 0.3098013,
//         size.width * 0.7169313,
//         size.height * 0.3081144);
//     path_22.cubicTo(
//         size.width * 0.7161967,
//         size.height * 0.3077307,
//         size.width * 0.7153462,
//         size.height * 0.3073181,
//         size.width * 0.7144440,
//         size.height * 0.3068547);
//     path_22.cubicTo(
//         size.width * 0.7074720,
//         size.height * 0.3033506,
//         size.width * 0.6969431,
//         size.height * 0.2980365,
//         size.width * 0.6906799,
//         size.height * 0.2894501);
//     path_22.cubicTo(
//         size.width * 0.6906284,
//         size.height * 0.2893777,
//         size.width * 0.6904737,
//         size.height * 0.2893197,
//         size.width * 0.6903320,
//         size.height * 0.2893342);
//     path_22.cubicTo(
//         size.width * 0.6901902,
//         size.height * 0.2893487,
//         size.width * 0.6901000,
//         size.height * 0.2893921,
//         size.width * 0.6900742,
//         size.height * 0.2894645);
//     path_22.arcToPoint(Offset(size.width * 0.6864787, size.height * 0.2812980),
//         radius: Radius.elliptical(
//             size.width * 0.09355637, size.height * 0.05255857),
//         rotation: 0,
//         largeArc: false,
//         clockwise: true);
//     path_22.cubicTo(
//         size.width * 0.6847647,
//         size.height * 0.2753178,
//         size.width * 0.6801639,
//         size.height * 0.2594408,
//         size.width * 0.6960668,
//         size.height * 0.2521720);
//     path_22.cubicTo(
//         size.width * 0.6970205,
//         size.height * 0.2517303,
//         size.width * 0.6980257,
//         size.height * 0.2513466,
//         size.width * 0.6990438,
//         size.height * 0.2510063);
//     path_22.cubicTo(
//         size.width * 0.7002552,
//         size.height * 0.2513466,
//         size.width * 0.7244446,
//         size.height * 0.2583476,
//         size.width * 0.7415460,
//         size.height * 0.2763966);
//     path_22.cubicTo(
//         size.width * 0.7415460,
//         size.height * 0.2763966,
//         size.width * 0.7415460,
//         size.height * 0.2764111,
//         size.width * 0.7415717,
//         size.height * 0.2764111);
//     path_22.cubicTo(
//         size.width * 0.7497036,
//         size.height * 0.2857794,
//         size.width * 0.7623718,
//         size.height * 0.2958863,
//         size.width * 0.7759678,
//         size.height * 0.3067027);
//     path_22.cubicTo(
//         size.width * 0.7855817,
//         size.height * 0.3143552,
//         size.width * 0.7955049,
//         size.height * 0.3222684,
//         size.width * 0.8046678,
//         size.height * 0.3305725);
//     path_22.cubicTo(
//         size.width * 0.8046678,
//         size.height * 0.3305870,
//         size.width * 0.8049642,
//         size.height * 0.3307970,
//         size.width * 0.8054023,
//         size.height * 0.3311662);
//     path_22.cubicTo(
//         size.width * 0.8076963,
//         size.height * 0.3331354,
//         size.width * 0.8145394,
//         size.height * 0.3394993,
//         size.width * 0.8115238,
//         size.height * 0.3439808);
//     path_22.close();

//     Paint paint22Fill = Paint()..style = PaintingStyle.fill;
//     paint22Fill.color = randomColor().withOpacity(1.0);
//     canvas.drawPath(path_22, paint22Fill);

//     Path path_23 = Path();
//     path_23.moveTo(size.width * 0.3135213, size.height * 0.2812980);
//     path_23.cubicTo(
//         size.width * 0.3127352,
//         size.height * 0.2840636,
//         size.width * 0.3115109,
//         size.height * 0.2868003,
//         size.width * 0.3099258,
//         size.height * 0.2894790);
//     path_23.cubicTo(
//         size.width * 0.3099000,
//         size.height * 0.2893921,
//         size.width * 0.3097969,
//         size.height * 0.2893487,
//         size.width * 0.3096680,
//         size.height * 0.2893342);
//     path_23.cubicTo(
//         size.width * 0.3095134,
//         size.height * 0.2893197,
//         size.width * 0.3093716,
//         size.height * 0.2893777,
//         size.width * 0.3092943,
//         size.height * 0.2894501);
//     path_23.cubicTo(
//         size.width * 0.3030955,
//         size.height * 0.2980003,
//         size.width * 0.2925537,
//         size.height * 0.3033144,
//         size.width * 0.2855817,
//         size.height * 0.3068258);
//     path_23.cubicTo(
//         size.width * 0.2846796,
//         size.height * 0.3072963,
//         size.width * 0.2838162,
//         size.height * 0.3077307,
//         size.width * 0.2830687,
//         size.height * 0.3081144);
//     path_23.cubicTo(
//         size.width * 0.2789706,
//         size.height * 0.3102430,
//         size.width * 0.2592015,
//         size.height * 0.3248386,
//         size.width * 0.2508892,
//         size.height * 0.3310214);
//     path_23.cubicTo(
//         size.width * 0.2314552,
//         size.height * 0.3443066,
//         size.width * 0.2130007,
//         size.height * 0.3487229,
//         size.width * 0.1992500,
//         size.height * 0.3483464);
//     path_23.cubicTo(
//         size.width * 0.1935409,
//         size.height * 0.3476369,
//         size.width * 0.1899067,
//         size.height * 0.3461745,
//         size.width * 0.1884504,
//         size.height * 0.3439808);
//     path_23.cubicTo(
//         size.width * 0.1850482,
//         size.height * 0.3389201,
//         size.width * 0.1941853,
//         size.height * 0.3314920,
//         size.width * 0.1952420,
//         size.height * 0.3306449);
//     path_23.cubicTo(
//         size.width * 0.1952936,
//         size.height * 0.3306015,
//         size.width * 0.1953451,
//         size.height * 0.3305725,
//         size.width * 0.1953451,
//         size.height * 0.3305725);
//     path_23.cubicTo(
//         size.width * 0.1953451,
//         size.height * 0.3305580,
//         size.width * 0.1953709,
//         size.height * 0.3305580,
//         size.width * 0.1953709,
//         size.height * 0.3305436);
//     path_23.cubicTo(
//         size.width * 0.2044822,
//         size.height * 0.3222539,
//         size.width * 0.2144054,
//         size.height * 0.3143552,
//         size.width * 0.2240193,
//         size.height * 0.3067027);
//     path_23.cubicTo(
//         size.width * 0.2376153,
//         size.height * 0.2958863,
//         size.width * 0.2502835,
//         size.height * 0.2857794,
//         size.width * 0.2584154,
//         size.height * 0.2764111);
//     path_23.cubicTo(
//         size.width * 0.2584412,
//         size.height * 0.2764111,
//         size.width * 0.2584412,
//         size.height * 0.2763966,
//         size.width * 0.2584412,
//         size.height * 0.2763966);
//     path_23.cubicTo(
//         size.width * 0.2755554,
//         size.height * 0.2583910,
//         size.width * 0.2996288,
//         size.height * 0.2513756,
//         size.width * 0.3009691,
//         size.height * 0.2510063);
//     path_23.cubicTo(
//         size.width * 0.3020001,
//         size.height * 0.2513611,
//         size.width * 0.3029795,
//         size.height * 0.2517448,
//         size.width * 0.3039203,
//         size.height * 0.2521720);
//     path_23.cubicTo(
//         size.width * 0.3198103,
//         size.height * 0.2594408,
//         size.width * 0.3152224,
//         size.height * 0.2753178,
//         size.width * 0.3135084,
//         size.height * 0.2812980);
//     path_23.close();

//     Paint paint23Fill = Paint()..style = PaintingStyle.fill;
//     paint23Fill.color = randomColor().withOpacity(1.0);
//     canvas.drawPath(path_23, paint23Fill);

//     Path path_24 = Path();
//     path_24.moveTo(size.width * 0.4152534, size.height * 0.3387681);
//     path_24.cubicTo(
//         size.width * 0.4111294,
//         size.height * 0.3516116,
//         size.width * 0.4064643,
//         size.height * 0.3661710,
//         size.width * 0.4099954,
//         size.height * 0.3796082);
//     path_24.cubicTo(
//         size.width * 0.4174442,
//         size.height * 0.4080826,
//         size.width * 0.3996727,
//         size.height * 0.4211433,
//         size.width * 0.3916697,
//         size.height * 0.4254510);
//     path_24.cubicTo(
//         size.width * 0.3813985,
//         size.height * 0.4309533,
//         size.width * 0.3637559,
//         size.height * 0.4335018,
//         size.width * 0.3484458,
//         size.height * 0.4316773);
//     path_24.cubicTo(
//         size.width * 0.3482396,
//         size.height * 0.4316484,
//         size.width * 0.3480205,
//         size.height * 0.4316339,
//         size.width * 0.3478401,
//         size.height * 0.4316049);
//     path_24.cubicTo(
//         size.width * 0.3500052,
//         size.height * 0.4219687,
//         size.width * 0.3516161,
//         size.height * 0.4137587,
//         size.width * 0.3525439,
//         size.height * 0.4078220);
//     path_24.cubicTo(
//         size.width * 0.3531754,
//         size.height * 0.4036373,
//         size.width * 0.3541806,
//         size.height * 0.3994599,
//         size.width * 0.3552374,
//         size.height * 0.3950363);
//     path_24.cubicTo(
//         size.width * 0.3590907,
//         size.height * 0.3790362,
//         size.width * 0.3630728,
//         size.height * 0.3625076,
//         size.width * 0.3488195,
//         size.height * 0.3466450);
//     path_24.cubicTo(
//         size.width * 0.3186376,
//         size.height * 0.3140439,
//         size.width * 0.3113563,
//         size.height * 0.2940691,
//         size.width * 0.3101706,
//         size.height * 0.2902537);
//     path_24.cubicTo(
//         size.width * 0.3119620,
//         size.height * 0.2873505,
//         size.width * 0.3132893,
//         size.height * 0.2843677,
//         size.width * 0.3141786,
//         size.height * 0.2813486);
//     path_24.cubicTo(
//         size.width * 0.3159183,
//         size.height * 0.2753106,
//         size.width * 0.3205449,
//         size.height * 0.2592815,
//         size.width * 0.3043327,
//         size.height * 0.2518824);
//     path_24.cubicTo(
//         size.width * 0.3034821,
//         size.height * 0.2514987,
//         size.width * 0.3025671,
//         size.height * 0.2511294,
//         size.width * 0.3016393,
//         size.height * 0.2508036);
//     path_24.cubicTo(
//         size.width * 0.3117558,
//         size.height * 0.2534389,
//         size.width * 0.3189855,
//         size.height * 0.2578480,
//         size.width * 0.3255838,
//         size.height * 0.2623295);
//     path_24.cubicTo(
//         size.width * 0.3273751,
//         size.height * 0.2635603,
//         size.width * 0.3292824,
//         size.height * 0.2647404,
//         size.width * 0.3312026,
//         size.height * 0.2658626);
//     path_24.cubicTo(
//         size.width * 0.3313315,
//         size.height * 0.2659494,
//         size.width * 0.3314604,
//         size.height * 0.2660291,
//         size.width * 0.3316279,
//         size.height * 0.2661015);
//     path_24.cubicTo(
//         size.width * 0.3468091,
//         size.height * 0.2755278,
//         size.width * 0.3645549,
//         size.height * 0.2840926,
//         size.width * 0.3802902,
//         size.height * 0.2916872);
//     path_24.cubicTo(
//         size.width * 0.4014382,
//         size.height * 0.3018954,
//         size.width * 0.4181272,
//         size.height * 0.3099461,
//         size.width * 0.4194933,
//         size.height * 0.3155570);
//     path_24.cubicTo(
//         size.width * 0.4194933,
//         size.height * 0.3155860,
//         size.width * 0.4195190,
//         size.height * 0.3156294,
//         size.width * 0.4195190,
//         size.height * 0.3156584);
//     path_24.cubicTo(
//         size.width * 0.4196479,
//         size.height * 0.3163824,
//         size.width * 0.4197510,
//         size.height * 0.3171353,
//         size.width * 0.4198412,
//         size.height * 0.3179245);
//     path_24.cubicTo(
//         size.width * 0.4198670,
//         size.height * 0.3180114,
//         size.width * 0.4198670,
//         size.height * 0.3181200,
//         size.width * 0.4198670,
//         size.height * 0.3182068);
//     path_24.cubicTo(
//         size.width * 0.4200990,
//         size.height * 0.3236078,
//         size.width * 0.4178308,
//         size.height * 0.3307246,
//         size.width * 0.4152405,
//         size.height * 0.3387608);
//     path_24.close();

//     Paint paint24Fill = Paint()..style = PaintingStyle.fill;
//     paint24Fill.color = randomColor().withOpacity(1.0);
//     canvas.drawPath(path_24, paint24Fill);

//     Path path_25 = Path();
//     path_25.moveTo(size.width * 0.6983607, size.height * 0.2508109);
//     path_25.cubicTo(
//         size.width * 0.6974329,
//         size.height * 0.2511367,
//         size.width * 0.6965179,
//         size.height * 0.2515059,
//         size.width * 0.6956673,
//         size.height * 0.2518896);
//     path_25.cubicTo(
//         size.width * 0.6794551,
//         size.height * 0.2592888,
//         size.width * 0.6840817,
//         size.height * 0.2753178,
//         size.width * 0.6858214,
//         size.height * 0.2813559);
//     path_25.cubicTo(
//         size.width * 0.6867235,
//         size.height * 0.2843460,
//         size.width * 0.6880380,
//         size.height * 0.2873505,
//         size.width * 0.6898294,
//         size.height * 0.2902320);
//     path_25.lineTo(size.width * 0.6898294, size.height * 0.2902464);
//     path_25.cubicTo(
//         size.width * 0.6885406,
//         size.height * 0.2942863,
//         size.width * 0.6810918,
//         size.height * 0.3143697,
//         size.width * 0.6511547,
//         size.height * 0.3466595);
//     path_25.cubicTo(
//         size.width * 0.6369272,
//         size.height * 0.3625221,
//         size.width * 0.6409093,
//         size.height * 0.3790507,
//         size.width * 0.6447368,
//         size.height * 0.3950363);
//     path_25.cubicTo(
//         size.width * 0.6458194,
//         size.height * 0.3994599,
//         size.width * 0.6468246,
//         size.height * 0.4036518,
//         size.width * 0.6474561,
//         size.height * 0.4078364);
//     path_25.cubicTo(
//         size.width * 0.6484097,
//         size.height * 0.4139903,
//         size.width * 0.6500979,
//         size.height * 0.4225479,
//         size.width * 0.6521084,
//         size.height * 0.4316194);
//     path_25.cubicTo(
//         size.width * 0.6519279,
//         size.height * 0.4316484,
//         size.width * 0.6517346,
//         size.height * 0.4316773,
//         size.width * 0.6515542,
//         size.height * 0.4316918);
//     path_25.cubicTo(
//         size.width * 0.6362441,
//         size.height * 0.4334945,
//         size.width * 0.6185757,
//         size.height * 0.4309678,
//         size.width * 0.6083303,
//         size.height * 0.4254655);
//     path_25.cubicTo(
//         size.width * 0.6003273,
//         size.height * 0.4211578,
//         size.width * 0.5825558,
//         size.height * 0.4080898,
//         size.width * 0.5900046,
//         size.height * 0.3796227);
//     path_25.cubicTo(
//         size.width * 0.5935486,
//         size.height * 0.3661855,
//         size.width * 0.5888706,
//         size.height * 0.3516261,
//         size.width * 0.5847466,
//         size.height * 0.3387825);
//     path_25.cubicTo(
//         size.width * 0.5821563,
//         size.height * 0.3307463,
//         size.width * 0.5798881,
//         size.height * 0.3236440,
//         size.width * 0.5801201,
//         size.height * 0.3182430);
//     path_25.lineTo(size.width * 0.5801201, size.height * 0.3181127);
//     path_25.cubicTo(
//         size.width * 0.5802232,
//         size.height * 0.3171932,
//         size.width * 0.5803521,
//         size.height * 0.3163100,
//         size.width * 0.5805196,
//         size.height * 0.3154629);
//     path_25.cubicTo(
//         size.width * 0.5821047,
//         size.height * 0.3098520,
//         size.width * 0.5987164,
//         size.height * 0.3018520,
//         size.width * 0.6196969,
//         size.height * 0.2917089);
//     path_25.cubicTo(
//         size.width * 0.6354322,
//         size.height * 0.2841143,
//         size.width * 0.6531780,
//         size.height * 0.2755495,
//         size.width * 0.6683592,
//         size.height * 0.2661232);
//     path_25.cubicTo(
//         size.width * 0.6685138,
//         size.height * 0.2660508,
//         size.width * 0.6686556,
//         size.height * 0.2659784,
//         size.width * 0.6687845,
//         size.height * 0.2658843);
//     path_25.arcToPoint(Offset(size.width * 0.6744033, size.height * 0.2623512),
//         radius:
//             Radius.elliptical(size.width * 0.1049796, size.height * 0.05897599),
//         rotation: 0,
//         largeArc: false,
//         clockwise: false);
//     path_25.cubicTo(
//         size.width * 0.6810016,
//         size.height * 0.2578697,
//         size.width * 0.6882442,
//         size.height * 0.2534607,
//         size.width * 0.6983479,
//         size.height * 0.2508253);
//     path_25.close();

//     Paint paint25Fill = Paint()..style = PaintingStyle.fill;
//     paint25Fill.color = randomColor().withOpacity(1.0);
//     canvas.drawPath(path_25, paint25Fill);

//     Path path_26 = Path();
//     path_26.moveTo(size.width * 0.5622326, size.height * 0.3530234);
//     path_26.lineTo(size.width * 0.5600418, size.height * 0.3530379);
//     path_26.cubicTo(
//         size.width * 0.5547838,
//         size.height * 0.3530958,
//         size.width * 0.5496160,
//         size.height * 0.3531392,
//         size.width * 0.5445899,
//         size.height * 0.3531392);
//     path_26.cubicTo(
//         size.width * 0.5280685,
//         size.height * 0.3531392,
//         size.width * 0.5134930,
//         size.height * 0.3526179,
//         size.width * 0.5049100,
//         size.height * 0.3498813);
//     path_26.cubicTo(
//         size.width * 0.5019846,
//         size.height * 0.3489473,
//         size.width * 0.5006057,
//         size.height * 0.3473473,
//         size.width * 0.5000000,
//         size.height * 0.3452622);
//     path_26.cubicTo(
//         size.width * 0.4993943,
//         size.height * 0.3473473,
//         size.width * 0.4980154,
//         size.height * 0.3489473,
//         size.width * 0.4950900,
//         size.height * 0.3498813);
//     path_26.cubicTo(
//         size.width * 0.4865070,
//         size.height * 0.3526179,
//         size.width * 0.4719315,
//         size.height * 0.3531392,
//         size.width * 0.4554101,
//         size.height * 0.3531392);
//     path_26.cubicTo(
//         size.width * 0.4503969,
//         size.height * 0.3531392,
//         size.width * 0.4452162,
//         size.height * 0.3530958,
//         size.width * 0.4399582,
//         size.height * 0.3530379);
//     path_26.lineTo(size.width * 0.4377674, size.height * 0.3530234);
//     path_26.cubicTo(
//         size.width * 0.4376901,
//         size.height * 0.3530234,
//         size.width * 0.4300608,
//         size.height * 0.3529220,
//         size.width * 0.4216068,
//         size.height * 0.3525383);
//     path_26.cubicTo(
//         size.width * 0.4228697,
//         size.height * 0.3693348,
//         size.width * 0.4249575,
//         size.height * 0.3923576,
//         size.width * 0.4269421,
//         size.height * 0.4097912);
//     path_26.cubicTo(
//         size.width * 0.4298675,
//         size.height * 0.4355072,
//         size.width * 0.4473298,
//         size.height * 0.4554458,
//         size.width * 0.4574849,
//         size.height * 0.4650314);
//     path_26.cubicTo(
//         size.width * 0.4720604,
//         size.height * 0.4788089,
//         size.width * 0.4890329,
//         size.height * 0.4880542,
//         size.width * 0.4997294,
//         size.height * 0.4880542);
//     path_26.cubicTo(
//         size.width * 0.4998325,
//         size.height * 0.4880542,
//         size.width * 0.4999356,
//         size.height * 0.4880832,
//         size.width * 0.4999871,
//         size.height * 0.4881411);
//     path_26.arcToPoint(Offset(size.width * 0.5002449, size.height * 0.4880542),
//         radius: Radius.elliptical(
//             size.width * 0.0002835198, size.height * 0.0001592772),
//         rotation: 0,
//         largeArc: false,
//         clockwise: true);
//     path_26.cubicTo(
//         size.width * 0.5109413,
//         size.height * 0.4880542,
//         size.width * 0.5279138,
//         size.height * 0.4788089,
//         size.width * 0.5424893,
//         size.height * 0.4650314);
//     path_26.cubicTo(
//         size.width * 0.5526316,
//         size.height * 0.4554458,
//         size.width * 0.5701067,
//         size.height * 0.4355072,
//         size.width * 0.5730321,
//         size.height * 0.4097912);
//     path_26.cubicTo(
//         size.width * 0.5750168,
//         size.height * 0.3923576,
//         size.width * 0.5770916,
//         size.height * 0.3693203,
//         size.width * 0.5783674,
//         size.height * 0.3525383);
//     path_26.cubicTo(
//         size.width * 0.5699134,
//         size.height * 0.3529220,
//         size.width * 0.5622841,
//         size.height * 0.3530234,
//         size.width * 0.5622068,
//         size.height * 0.3530234);
//     path_26.close();
//     path_26.moveTo(size.width * 0.4519821, size.height * 0.3569184);
//     path_26.cubicTo(
//         size.width * 0.4603201,
//         size.height * 0.3563827,
//         size.width * 0.4742899,
//         size.height * 0.3554849,
//         size.width * 0.4866746,
//         size.height * 0.3555718);
//     path_26.cubicTo(
//         size.width * 0.4975514,
//         size.height * 0.3556442,
//         size.width * 0.4996392,
//         size.height * 0.3593438,
//         size.width * 0.5000129,
//         size.height * 0.3648388);
//     path_26.cubicTo(
//         size.width * 0.5003866,
//         size.height * 0.3593510,
//         size.width * 0.5024744,
//         size.height * 0.3556514,
//         size.width * 0.5133512,
//         size.height * 0.3555718);
//     path_26.cubicTo(
//         size.width * 0.5257359,
//         size.height * 0.3554849,
//         size.width * 0.5397057,
//         size.height * 0.3563827,
//         size.width * 0.5480437,
//         size.height * 0.3569184);
//     path_26.cubicTo(
//         size.width * 0.5482241,
//         size.height * 0.3569329,
//         size.width * 0.5483659,
//         size.height * 0.3570198,
//         size.width * 0.5483401,
//         size.height * 0.3571284);
//     path_26.cubicTo(
//         size.width * 0.5483143,
//         size.height * 0.3572297,
//         size.width * 0.5481597,
//         size.height * 0.3573094,
//         size.width * 0.5479664,
//         size.height * 0.3572949);
//     path_26.cubicTo(
//         size.width * 0.5396541,
//         size.height * 0.3567591,
//         size.width * 0.5257101,
//         size.height * 0.3558469,
//         size.width * 0.5133512,
//         size.height * 0.3559483);
//     path_26.cubicTo(
//         size.width * 0.5014949,
//         size.height * 0.3560352,
//         size.width * 0.5006315,
//         size.height * 0.3605094,
//         size.width * 0.5006315,
//         size.height * 0.3673004);
//     path_26.cubicTo(
//         size.width * 0.5006315,
//         size.height * 0.3674018,
//         size.width * 0.5004768,
//         size.height * 0.3674814,
//         size.width * 0.5002835,
//         size.height * 0.3674814);
//     path_26.cubicTo(
//         size.width * 0.5001546,
//         size.height * 0.3674814,
//         size.width * 0.5000773,
//         size.height * 0.3674524,
//         size.width * 0.5000258,
//         size.height * 0.3673945);
//     path_26.cubicTo(
//         size.width * 0.4999742,
//         size.height * 0.3674524,
//         size.width * 0.4998969,
//         size.height * 0.3674814,
//         size.width * 0.4997680,
//         size.height * 0.3674814);
//     path_26.cubicTo(
//         size.width * 0.4995876,
//         size.height * 0.3674814,
//         size.width * 0.4994201,
//         size.height * 0.3674090,
//         size.width * 0.4994201,
//         size.height * 0.3673004);
//     path_26.cubicTo(
//         size.width * 0.4994201,
//         size.height * 0.3605094,
//         size.width * 0.4985437,
//         size.height * 0.3560424,
//         size.width * 0.4866617,
//         size.height * 0.3559483);
//     path_26.cubicTo(
//         size.width * 0.4743028,
//         size.height * 0.3558614,
//         size.width * 0.4603974,
//         size.height * 0.3567591,
//         size.width * 0.4520465,
//         size.height * 0.3572949);
//     path_26.cubicTo(
//         size.width * 0.4518919,
//         size.height * 0.3573094,
//         size.width * 0.4516985,
//         size.height * 0.3572370,
//         size.width * 0.4516985,
//         size.height * 0.3571284);
//     path_26.cubicTo(
//         size.width * 0.4516728,
//         size.height * 0.3570270,
//         size.width * 0.4518016,
//         size.height * 0.3569329,
//         size.width * 0.4519949,
//         size.height * 0.3569184);
//     path_26.close();
//     path_26.moveTo(size.width * 0.5006186, size.height * 0.4763256);
//     path_26.cubicTo(
//         size.width * 0.5006186,
//         size.height * 0.4764270,
//         size.width * 0.5004639,
//         size.height * 0.4765066,
//         size.width * 0.5002706,
//         size.height * 0.4765066);
//     path_26.cubicTo(
//         size.width * 0.5002449,
//         size.height * 0.4765066,
//         size.width * 0.5002191,
//         size.height * 0.4764921,
//         size.width * 0.5002191,
//         size.height * 0.4764921);
//     path_26.cubicTo(
//         size.width * 0.5001933,
//         size.height * 0.4765066,
//         size.width * 0.5001933,
//         size.height * 0.4764921,
//         size.width * 0.5001933,
//         size.height * 0.4764921);
//     path_26.cubicTo(
//         size.width * 0.5001675,
//         size.height * 0.4765066,
//         size.width * 0.5001160,
//         size.height * 0.4765066,
//         size.width * 0.5000902,
//         size.height * 0.4765066);
//     path_26.cubicTo(
//         size.width * 0.5000644,
//         size.height * 0.4765066,
//         size.width * 0.5000387,
//         size.height * 0.4765066,
//         size.width * 0.5000129,
//         size.height * 0.4764921);
//     path_26.cubicTo(
//         size.width * 0.4999871,
//         size.height * 0.4765066,
//         size.width * 0.4999613,
//         size.height * 0.4765066,
//         size.width * 0.4999356,
//         size.height * 0.4765066);
//     path_26.cubicTo(
//         size.width * 0.4999098,
//         size.height * 0.4765066,
//         size.width * 0.4998582,
//         size.height * 0.4765066,
//         size.width * 0.4998325,
//         size.height * 0.4764921);
//     path_26.lineTo(size.width * 0.4998067, size.height * 0.4764921);
//     path_26.cubicTo(
//         size.width * 0.4998067,
//         size.height * 0.4764921,
//         size.width * 0.4997809,
//         size.height * 0.4765066,
//         size.width * 0.4997551,
//         size.height * 0.4765066);
//     path_26.cubicTo(
//         size.width * 0.4995747,
//         size.height * 0.4765066,
//         size.width * 0.4994072,
//         size.height * 0.4764342,
//         size.width * 0.4994072,
//         size.height * 0.4763256);
//     path_26.lineTo(size.width * 0.4994072, size.height * 0.4203759);
//     path_26.cubicTo(
//         size.width * 0.4994072,
//         size.height * 0.4202745,
//         size.width * 0.4995618,
//         size.height * 0.4201949,
//         size.width * 0.4997551,
//         size.height * 0.4201949);
//     path_26.cubicTo(
//         size.width * 0.4997809,
//         size.height * 0.4201949,
//         size.width * 0.4998067,
//         size.height * 0.4202094,
//         size.width * 0.4998067,
//         size.height * 0.4202094);
//     path_26.lineTo(size.width * 0.4998325, size.height * 0.4202094);
//     path_26.cubicTo(
//         size.width * 0.4998325,
//         size.height * 0.4202094,
//         size.width * 0.4999098,
//         size.height * 0.4201949,
//         size.width * 0.4999356,
//         size.height * 0.4201949);
//     path_26.cubicTo(
//         size.width * 0.4999613,
//         size.height * 0.4201949,
//         size.width * 0.4999871,
//         size.height * 0.4201949,
//         size.width * 0.5000129,
//         size.height * 0.4202094);
//     path_26.cubicTo(
//         size.width * 0.5000387,
//         size.height * 0.4201949,
//         size.width * 0.5000644,
//         size.height * 0.4201949,
//         size.width * 0.5000902,
//         size.height * 0.4201949);
//     path_26.cubicTo(
//         size.width * 0.5001160,
//         size.height * 0.4201949,
//         size.width * 0.5001675,
//         size.height * 0.4201949,
//         size.width * 0.5001933,
//         size.height * 0.4202094);
//     path_26.cubicTo(
//         size.width * 0.5001933,
//         size.height * 0.4202094,
//         size.width * 0.5001933,
//         size.height * 0.4201949,
//         size.width * 0.5002191,
//         size.height * 0.4202094);
//     path_26.cubicTo(
//         size.width * 0.5002191,
//         size.height * 0.4202094,
//         size.width * 0.5002449,
//         size.height * 0.4201949,
//         size.width * 0.5002706,
//         size.height * 0.4201949);
//     path_26.cubicTo(
//         size.width * 0.5004511,
//         size.height * 0.4201949,
//         size.width * 0.5006186,
//         size.height * 0.4202673,
//         size.width * 0.5006186,
//         size.height * 0.4203759);
//     path_26.lineTo(size.width * 0.5006186, size.height * 0.4763256);
//     path_26.close();
//     path_26.moveTo(size.width * 0.5480051, size.height * 0.3979395);
//     path_26.lineTo(size.width * 0.5470514, size.height * 0.3979395);
//     path_26.cubicTo(
//         size.width * 0.5375793,
//         size.height * 0.3979395,
//         size.width * 0.5155807,
//         size.height * 0.3991414,
//         size.width * 0.5078226,
//         size.height * 0.4001477);
//     path_26.cubicTo(
//         size.width * 0.5019073,
//         size.height * 0.4009006,
//         size.width * 0.5006186,
//         size.height * 0.4040717,
//         size.width * 0.5003222,
//         size.height * 0.4077061);
//     path_26.cubicTo(
//         size.width * 0.5004253,
//         size.height * 0.4087704,
//         size.width * 0.5004253,
//         size.height * 0.4098636,
//         size.width * 0.5004253,
//         size.height * 0.4109206);
//     path_26.lineTo(size.width * 0.5004253, size.height * 0.4115722);
//     path_26.cubicTo(
//         size.width * 0.5004253,
//         size.height * 0.4116736,
//         size.width * 0.5002706,
//         size.height * 0.4117532,
//         size.width * 0.5000773,
//         size.height * 0.4117532);
//     path_26.cubicTo(
//         size.width * 0.5000515,
//         size.height * 0.4117532,
//         size.width * 0.5000258,
//         size.height * 0.4117532,
//         size.width * 0.5000000,
//         size.height * 0.4117387);
//     path_26.cubicTo(
//         size.width * 0.4999742,
//         size.height * 0.4117532,
//         size.width * 0.4999485,
//         size.height * 0.4117532,
//         size.width * 0.4999227,
//         size.height * 0.4117532);
//     path_26.cubicTo(
//         size.width * 0.4997423,
//         size.height * 0.4117532,
//         size.width * 0.4995747,
//         size.height * 0.4116808,
//         size.width * 0.4995747,
//         size.height * 0.4115722);
//     path_26.lineTo(size.width * 0.4995747, size.height * 0.4109206);
//     path_26.cubicTo(
//         size.width * 0.4995747,
//         size.height * 0.4098708,
//         size.width * 0.4995747,
//         size.height * 0.4087776,
//         size.width * 0.4996778,
//         size.height * 0.4077061);
//     path_26.cubicTo(
//         size.width * 0.4993814,
//         size.height * 0.4040645,
//         size.width * 0.4980927,
//         size.height * 0.4009006,
//         size.width * 0.4921774,
//         size.height * 0.4001477);
//     path_26.cubicTo(
//         size.width * 0.4841487,
//         size.height * 0.3991124,
//         size.width * 0.4608356,
//         size.height * 0.3978382,
//         size.width * 0.4519949,
//         size.height * 0.3979395);
//     path_26.cubicTo(
//         size.width * 0.4518145,
//         size.height * 0.3979395,
//         size.width * 0.4516728,
//         size.height * 0.3978671,
//         size.width * 0.4516728,
//         size.height * 0.3977585);
//     path_26.cubicTo(
//         size.width * 0.4516470,
//         size.height * 0.3976572,
//         size.width * 0.4518016,
//         size.height * 0.3975775,
//         size.width * 0.4519949,
//         size.height * 0.3975631);
//     path_26.cubicTo(
//         size.width * 0.4610547,
//         size.height * 0.3974617,
//         size.width * 0.4840713,
//         size.height * 0.3987142,
//         size.width * 0.4923321,
//         size.height * 0.3997712);
//     path_26.cubicTo(
//         size.width * 0.4973710,
//         size.height * 0.4004228,
//         size.width * 0.4992783,
//         size.height * 0.4027323,
//         size.width * 0.4999871,
//         size.height * 0.4055269);
//     path_26.cubicTo(
//         size.width * 0.5006959,
//         size.height * 0.4027323,
//         size.width * 0.5026032,
//         size.height * 0.4004228,
//         size.width * 0.5076421,
//         size.height * 0.3997712);
//     path_26.cubicTo(
//         size.width * 0.5159029,
//         size.height * 0.3987214,
//         size.width * 0.5388809,
//         size.height * 0.3974472,
//         size.width * 0.5479793,
//         size.height * 0.3975631);
//     path_26.cubicTo(
//         size.width * 0.5481597,
//         size.height * 0.3975775,
//         size.width * 0.5483272,
//         size.height * 0.3976499,
//         size.width * 0.5483015,
//         size.height * 0.3977585);
//     path_26.cubicTo(
//         size.width * 0.5483015,
//         size.height * 0.3978599,
//         size.width * 0.5481726,
//         size.height * 0.3979395,
//         size.width * 0.5479793,
//         size.height * 0.3979395);
//     path_26.close();
//     path_26.moveTo(size.width * 0.5599902, size.height * 0.3927485);
//     path_26.cubicTo(
//         size.width * 0.5516521,
//         size.height * 0.3929151,
//         size.width * 0.5458400,
//         size.height * 0.3931467,
//         size.width * 0.5406851,
//         size.height * 0.3933422);
//     path_26.cubicTo(
//         size.width * 0.5343703,
//         size.height * 0.3935956,
//         size.width * 0.5290737,
//         size.height * 0.3937983,
//         size.width * 0.5213284,
//         size.height * 0.3937983);
//     path_26.cubicTo(
//         size.width * 0.5188154,
//         size.height * 0.3937983,
//         size.width * 0.5160704,
//         size.height * 0.3937838,
//         size.width * 0.5129388,
//         size.height * 0.3937404);
//     path_26.cubicTo(
//         size.width * 0.5028996,
//         size.height * 0.3933133,
//         size.width * 0.5003995,
//         size.height * 0.3912861,
//         size.width * 0.5000000,
//         size.height * 0.3809838);
//     path_26.cubicTo(
//         size.width * 0.4996005,
//         size.height * 0.3912861,
//         size.width * 0.4971004,
//         size.height * 0.3933133,
//         size.width * 0.4870612,
//         size.height * 0.3937404);
//     path_26.cubicTo(
//         size.width * 0.4839425,
//         size.height * 0.3937838,
//         size.width * 0.4811717,
//         size.height * 0.3937983,
//         size.width * 0.4786716,
//         size.height * 0.3937983);
//     path_26.cubicTo(
//         size.width * 0.4709392,
//         size.height * 0.3937983,
//         size.width * 0.4656297,
//         size.height * 0.3935884,
//         size.width * 0.4592891,
//         size.height * 0.3933422);
//     path_26.cubicTo(
//         size.width * 0.4541729,
//         size.height * 0.3931467,
//         size.width * 0.4483607,
//         size.height * 0.3929151,
//         size.width * 0.4400098,
//         size.height * 0.3927485);
//     path_26.cubicTo(
//         size.width * 0.4398294,
//         size.height * 0.3927341,
//         size.width * 0.4396876,
//         size.height * 0.3926617,
//         size.width * 0.4396876,
//         size.height * 0.3925531);
//     path_26.cubicTo(
//         size.width * 0.4397134,
//         size.height * 0.3924517,
//         size.width * 0.4398423,
//         size.height * 0.3923721,
//         size.width * 0.4400356,
//         size.height * 0.3923721);
//     path_26.cubicTo(
//         size.width * 0.4442110,
//         size.height * 0.3924589,
//         size.width * 0.4477422,
//         size.height * 0.3925531,
//         size.width * 0.4508866,
//         size.height * 0.3926544);
//     path_26.cubicTo(
//         size.width * 0.4540311,
//         size.height * 0.3927558,
//         size.width * 0.4567761,
//         size.height * 0.3928789,
//         size.width * 0.4593407,
//         size.height * 0.3929657);
//     path_26.cubicTo(
//         size.width * 0.4677045,
//         size.height * 0.3933060,
//         size.width * 0.4743157,
//         size.height * 0.3935594,
//         size.width * 0.4870354,
//         size.height * 0.3933639);
//     path_26.cubicTo(
//         size.width * 0.4975385,
//         size.height * 0.3929223,
//         size.width * 0.4993943,
//         size.height * 0.3905549,
//         size.width * 0.4993943,
//         size.height * 0.3775159);
//     path_26.cubicTo(
//         size.width * 0.4993943,
//         size.height * 0.3774145,
//         size.width * 0.4995489,
//         size.height * 0.3773204,
//         size.width * 0.4997423,
//         size.height * 0.3773204);
//     path_26.cubicTo(
//         size.width * 0.4998454,
//         size.height * 0.3773204,
//         size.width * 0.4999485,
//         size.height * 0.3773493,
//         size.width * 0.5000000,
//         size.height * 0.3774073);
//     path_26.arcToPoint(Offset(size.width * 0.5002577, size.height * 0.3773204),
//         radius: Radius.elliptical(
//             size.width * 0.0002835198, size.height * 0.0001592772),
//         rotation: 0,
//         largeArc: false,
//         clockwise: true);
//     path_26.cubicTo(
//         size.width * 0.5004382,
//         size.height * 0.3773204,
//         size.width * 0.5006057,
//         size.height * 0.3774073,
//         size.width * 0.5006057,
//         size.height * 0.3775159);
//     path_26.cubicTo(
//         size.width * 0.5006057,
//         size.height * 0.3905549,
//         size.width * 0.5024486,
//         size.height * 0.3929223,
//         size.width * 0.5129904,
//         size.height * 0.3933639);
//     path_26.cubicTo(
//         size.width * 0.5256843,
//         size.height * 0.3935594,
//         size.width * 0.5322955,
//         size.height * 0.3933060,
//         size.width * 0.5406593,
//         size.height * 0.3929657);
//     path_26.cubicTo(
//         size.width * 0.5457756,
//         size.height * 0.3927703,
//         size.width * 0.5516135,
//         size.height * 0.3925386,
//         size.width * 0.5599644,
//         size.height * 0.3923721);
//     path_26.cubicTo(
//         size.width * 0.5601449,
//         size.height * 0.3923721,
//         size.width * 0.5602866,
//         size.height * 0.3924445,
//         size.width * 0.5603124,
//         size.height * 0.3925531);
//     path_26.cubicTo(
//         size.width * 0.5603124,
//         size.height * 0.3926544,
//         size.width * 0.5601577,
//         size.height * 0.3927341,
//         size.width * 0.5599902,
//         size.height * 0.3927485);
//     path_26.close();

//     Paint paint26Fill = Paint()..style = PaintingStyle.fill;
//     paint26Fill.color = randomColor().withOpacity(1.0);
//     canvas.drawPath(path_26, paint26Fill);

//     Path path_27 = Path();
//     path_27.moveTo(size.width * 0.5862287, size.height * 0.2918320);
//     path_27.cubicTo(
//         size.width * 0.5824269,
//         size.height * 0.2870392,
//         size.width * 0.5713954,
//         size.height * 0.2835568,
//         size.width * 0.5603768,
//         size.height * 0.2809722);
//     path_27.cubicTo(
//         size.width * 0.5602737,
//         size.height * 0.2809577,
//         size.width * 0.5601706,
//         size.height * 0.2809287,
//         size.width * 0.5600804,
//         size.height * 0.2809143);
//     path_27.cubicTo(
//         size.width * 0.5577349,
//         size.height * 0.2804581,
//         size.width * 0.5554023,
//         size.height * 0.2799513,
//         size.width * 0.5530826,
//         size.height * 0.2793939);
//     path_27.cubicTo(
//         size.width * 0.5530053,
//         size.height * 0.2793649,
//         size.width * 0.5529022,
//         size.height * 0.2793504,
//         size.width * 0.5528249,
//         size.height * 0.2793360);
//     path_27.lineTo(size.width * 0.5527991, size.height * 0.2793215);
//     path_27.cubicTo(
//         size.width * 0.5447703,
//         size.height * 0.2776635,
//         size.width * 0.5178102,
//         size.height * 0.2726174,
//         size.width * 0.5060441,
//         size.height * 0.2772219);
//     path_27.cubicTo(
//         size.width * 0.5024228,
//         size.height * 0.2786265,
//         size.width * 0.5006057,
//         size.height * 0.2808636,
//         size.width * 0.5006057,
//         size.height * 0.2838536);
//     path_27.cubicTo(
//         size.width * 0.5006057,
//         size.height * 0.2839550,
//         size.width * 0.5004511,
//         size.height * 0.2840346,
//         size.width * 0.5002577,
//         size.height * 0.2840346);
//     path_27.cubicTo(
//         size.width * 0.5001289,
//         size.height * 0.2840346,
//         size.width * 0.5000515,
//         size.height * 0.2840057,
//         size.width * 0.5000000,
//         size.height * 0.2839478);
//     path_27.cubicTo(
//         size.width * 0.4999485,
//         size.height * 0.2840057,
//         size.width * 0.4998711,
//         size.height * 0.2840346,
//         size.width * 0.4997423,
//         size.height * 0.2840346);
//     path_27.cubicTo(
//         size.width * 0.4995618,
//         size.height * 0.2840346,
//         size.width * 0.4993943,
//         size.height * 0.2839622,
//         size.width * 0.4993943,
//         size.height * 0.2838536);
//     path_27.cubicTo(
//         size.width * 0.4993943,
//         size.height * 0.2808636,
//         size.width * 0.4975772,
//         size.height * 0.2786265,
//         size.width * 0.4939559,
//         size.height * 0.2772219);
//     path_27.cubicTo(
//         size.width * 0.4821769,
//         size.height * 0.2726174,
//         size.width * 0.4552297,
//         size.height * 0.2776635,
//         size.width * 0.4472009,
//         size.height * 0.2793215);
//     path_27.lineTo(size.width * 0.4471751, size.height * 0.2793360);
//     path_27.cubicTo(
//         size.width * 0.4470720,
//         size.height * 0.2793649,
//         size.width * 0.4469431,
//         size.height * 0.2793794,
//         size.width * 0.4468272,
//         size.height * 0.2794084);
//     path_27.cubicTo(
//         size.width * 0.4444559,
//         size.height * 0.2800020,
//         size.width * 0.4420202,
//         size.height * 0.2805016,
//         size.width * 0.4396232,
//         size.height * 0.2809794);
//     path_27.cubicTo(
//         size.width * 0.4395974,
//         size.height * 0.2809939,
//         size.width * 0.4395716,
//         size.height * 0.2809939,
//         size.width * 0.4395459,
//         size.height * 0.2809939);
//     path_27.cubicTo(
//         size.width * 0.4285659,
//         size.height * 0.2836002,
//         size.width * 0.4175473,
//         size.height * 0.2870609,
//         size.width * 0.4137713,
//         size.height * 0.2918392);
//     path_27.cubicTo(
//         size.width * 0.4112068,
//         size.height * 0.2950827,
//         size.width * 0.4126630,
//         size.height * 0.2977470,
//         size.width * 0.4149054,
//         size.height * 0.3017651);
//     path_27.cubicTo(
//         size.width * 0.4166967,
//         size.height * 0.3050230,
//         size.width * 0.4190809,
//         size.height * 0.3092801,
//         size.width * 0.4201634,
//         size.height * 0.3155281);
//     path_27.cubicTo(
//         size.width * 0.4201634,
//         size.height * 0.3155570,
//         size.width * 0.4201892,
//         size.height * 0.3156005,
//         size.width * 0.4201892,
//         size.height * 0.3156294);
//     path_27.cubicTo(
//         size.width * 0.4203438,
//         size.height * 0.3163534,
//         size.width * 0.4204856,
//         size.height * 0.3171064,
//         size.width * 0.4205114,
//         size.height * 0.3179100);
//     path_27.cubicTo(
//         size.width * 0.4205371,
//         size.height * 0.3180114,
//         size.width * 0.4205371,
//         size.height * 0.3181055,
//         size.width * 0.4205371,
//         size.height * 0.3181923);
//     path_27.cubicTo(
//         size.width * 0.4205887,
//         size.height * 0.3186050,
//         size.width * 0.4206402,
//         size.height * 0.3190394,
//         size.width * 0.4206660,
//         size.height * 0.3194666);
//     path_27.cubicTo(
//         size.width * 0.4208207,
//         size.height * 0.3215661,
//         size.width * 0.4207433,
//         size.height * 0.3225725,
//         size.width * 0.4206145,
//         size.height * 0.3239480);
//     path_27.cubicTo(
//         size.width * 0.4204856,
//         size.height * 0.3254757,
//         size.width * 0.4202923,
//         size.height * 0.3275752,
//         size.width * 0.4203825,
//         size.height * 0.3322811);
//     path_27.cubicTo(
//         size.width * 0.4204340,
//         size.height * 0.3356404,
//         size.width * 0.4208851,
//         size.height * 0.3429382,
//         size.width * 0.4215939,
//         size.height * 0.3521691);
//     path_27.cubicTo(
//         size.width * 0.4300479,
//         size.height * 0.3525528,
//         size.width * 0.4377030,
//         size.height * 0.3526541,
//         size.width * 0.4377803,
//         size.height * 0.3526541);
//     path_27.lineTo(size.width * 0.4399711, size.height * 0.3526686);
//     path_27.cubicTo(
//         size.width * 0.4624723,
//         size.height * 0.3528786,
//         size.width * 0.4837492,
//         size.height * 0.3530668,
//         size.width * 0.4947807,
//         size.height * 0.3495772);
//     path_27.cubicTo(
//         size.width * 0.4982087,
//         size.height * 0.3484840,
//         size.width * 0.4993685,
//         size.height * 0.3463337,
//         size.width * 0.4996649,
//         size.height * 0.3435102);
//     path_27.cubicTo(
//         size.width * 0.4995361,
//         size.height * 0.3421780,
//         size.width * 0.4995876,
//         size.height * 0.3407156,
//         size.width * 0.4996649,
//         size.height * 0.3391301);
//     path_27.cubicTo(
//         size.width * 0.4996649,
//         size.height * 0.3387463,
//         size.width * 0.4996392,
//         size.height * 0.3383626,
//         size.width * 0.4996134,
//         size.height * 0.3379644);
//     path_27.cubicTo(
//         size.width * 0.4995103,
//         size.height * 0.3365165,
//         size.width * 0.4994072,
//         size.height * 0.3350178,
//         size.width * 0.4994072,
//         size.height * 0.3334540);
//     path_27.cubicTo(
//         size.width * 0.4994072,
//         size.height * 0.3333526,
//         size.width * 0.4995618,
//         size.height * 0.3332585,
//         size.width * 0.4997551,
//         size.height * 0.3332585);
//     path_27.cubicTo(
//         size.width * 0.4998582,
//         size.height * 0.3332585,
//         size.width * 0.4999613,
//         size.height * 0.3332875,
//         size.width * 0.5000129,
//         size.height * 0.3333454);
//     path_27.arcToPoint(Offset(size.width * 0.5002706, size.height * 0.3332585),
//         radius: Radius.elliptical(
//             size.width * 0.0002835198, size.height * 0.0001592772),
//         rotation: 0,
//         largeArc: false,
//         clockwise: true);
//     path_27.cubicTo(
//         size.width * 0.5004511,
//         size.height * 0.3332585,
//         size.width * 0.5006186,
//         size.height * 0.3333454,
//         size.width * 0.5006186,
//         size.height * 0.3334540);
//     path_27.cubicTo(
//         size.width * 0.5006186,
//         size.height * 0.3350250,
//         size.width * 0.5005155,
//         size.height * 0.3365165,
//         size.width * 0.5004124,
//         size.height * 0.3379644);
//     path_27.cubicTo(
//         size.width * 0.5003866,
//         size.height * 0.3383626,
//         size.width * 0.5003608,
//         size.height * 0.3387463,
//         size.width * 0.5003608,
//         size.height * 0.3391301);
//     path_27.cubicTo(
//         size.width * 0.5004382,
//         size.height * 0.3407156,
//         size.width * 0.5004897,
//         size.height * 0.3421780,
//         size.width * 0.5003608,
//         size.height * 0.3435102);
//     path_27.cubicTo(
//         size.width * 0.5006573,
//         size.height * 0.3463337,
//         size.width * 0.5018171,
//         size.height * 0.3484840,
//         size.width * 0.5052451,
//         size.height * 0.3495772);
//     path_27.cubicTo(
//         size.width * 0.5162766,
//         size.height * 0.3530668,
//         size.width * 0.5375664,
//         size.height * 0.3528786,
//         size.width * 0.5600546,
//         size.height * 0.3526686);
//     path_27.lineTo(size.width * 0.5622455, size.height * 0.3526541);
//     path_27.cubicTo(
//         size.width * 0.5623228,
//         size.height * 0.3526541,
//         size.width * 0.5699778,
//         size.height * 0.3525528,
//         size.width * 0.5784319,
//         size.height * 0.3521691);
//     path_27.cubicTo(
//         size.width * 0.5791407,
//         size.height * 0.3429382,
//         size.width * 0.5795917,
//         size.height * 0.3356404,
//         size.width * 0.5796433,
//         size.height * 0.3322811);
//     path_27.cubicTo(
//         size.width * 0.5797206,
//         size.height * 0.3275607,
//         size.width * 0.5795402,
//         size.height * 0.3254757,
//         size.width * 0.5794113,
//         size.height * 0.3239480);
//     path_27.cubicTo(
//         size.width * 0.5792824,
//         size.height * 0.3225725,
//         size.width * 0.5792051,
//         size.height * 0.3215661,
//         size.width * 0.5793598,
//         size.height * 0.3194666);
//     path_27.cubicTo(
//         size.width * 0.5793855,
//         size.height * 0.3190394,
//         size.width * 0.5794371,
//         size.height * 0.3186050,
//         size.width * 0.5794886,
//         size.height * 0.3181923);
//     path_27.cubicTo(
//         size.width * 0.5794886,
//         size.height * 0.3181055,
//         size.width * 0.5794886,
//         size.height * 0.3180114,
//         size.width * 0.5795144,
//         size.height * 0.3179100);
//     path_27.cubicTo(
//         size.width * 0.5795402,
//         size.height * 0.3171136,
//         size.width * 0.5796691,
//         size.height * 0.3163534,
//         size.width * 0.5798366,
//         size.height * 0.3156294);
//     path_27.cubicTo(
//         size.width * 0.5798366,
//         size.height * 0.3156005,
//         size.width * 0.5798624,
//         size.height * 0.3155570,
//         size.width * 0.5798624,
//         size.height * 0.3155281);
//     path_27.cubicTo(
//         size.width * 0.5809449,
//         size.height * 0.3092801,
//         size.width * 0.5833162,
//         size.height * 0.3050230,
//         size.width * 0.5851204,
//         size.height * 0.3017651);
//     path_27.cubicTo(
//         size.width * 0.5873370,
//         size.height * 0.2977397,
//         size.width * 0.5888190,
//         size.height * 0.2950754,
//         size.width * 0.5862544,
//         size.height * 0.2918392);
//     path_27.close();
//     path_27.moveTo(size.width * 0.5479148, size.height * 0.3162810);
//     path_27.cubicTo(
//         size.width * 0.5473349,
//         size.height * 0.3162086,
//         size.width * 0.5467292,
//         size.height * 0.3161145,
//         size.width * 0.5460720,
//         size.height * 0.3160131);
//     path_27.cubicTo(
//         size.width * 0.5380947,
//         size.height * 0.3148258,
//         size.width * 0.5247178,
//         size.height * 0.3128493,
//         size.width * 0.5136476,
//         size.height * 0.3139136);
//     path_27.cubicTo(
//         size.width * 0.5015851,
//         size.height * 0.3150502,
//         size.width * 0.5006057,
//         size.height * 0.3194159,
//         size.width * 0.5006057,
//         size.height * 0.3241652);
//     path_27.cubicTo(
//         size.width * 0.5006057,
//         size.height * 0.3242666,
//         size.width * 0.5004511,
//         size.height * 0.3243607,
//         size.width * 0.5002577,
//         size.height * 0.3243607);
//     path_27.arcToPoint(Offset(size.width * 0.5000000, size.height * 0.3242738),
//         radius: Radius.elliptical(
//             size.width * 0.0002835198, size.height * 0.0001592772),
//         rotation: 0,
//         largeArc: false,
//         clockwise: true);
//     path_27.arcToPoint(Offset(size.width * 0.4997423, size.height * 0.3243607),
//         radius: Radius.elliptical(
//             size.width * 0.0002835198, size.height * 0.0001592772),
//         rotation: 0,
//         largeArc: false,
//         clockwise: true);
//     path_27.cubicTo(
//         size.width * 0.4995618,
//         size.height * 0.3243607,
//         size.width * 0.4993943,
//         size.height * 0.3242738,
//         size.width * 0.4993943,
//         size.height * 0.3241652);
//     path_27.cubicTo(
//         size.width * 0.4993943,
//         size.height * 0.3194159,
//         size.width * 0.4984149,
//         size.height * 0.3150502,
//         size.width * 0.4863524,
//         size.height * 0.3139136);
//     path_27.cubicTo(
//         size.width * 0.4752951,
//         size.height * 0.3128493,
//         size.width * 0.4619053,
//         size.height * 0.3148330,
//         size.width * 0.4539280,
//         size.height * 0.3160131);
//     path_27.cubicTo(
//         size.width * 0.4532708,
//         size.height * 0.3161145,
//         size.width * 0.4526651,
//         size.height * 0.3162086,
//         size.width * 0.4520852,
//         size.height * 0.3162810);
//     path_27.cubicTo(
//         size.width * 0.4519047,
//         size.height * 0.3163100,
//         size.width * 0.4517372,
//         size.height * 0.3162521,
//         size.width * 0.4516857,
//         size.height * 0.3161507);
//     path_27.cubicTo(
//         size.width * 0.4516341,
//         size.height * 0.3160638,
//         size.width * 0.4517372,
//         size.height * 0.3159552,
//         size.width * 0.4519176,
//         size.height * 0.3159263);
//     path_27.cubicTo(
//         size.width * 0.4524718,
//         size.height * 0.3158539,
//         size.width * 0.4531033,
//         size.height * 0.3157453,
//         size.width * 0.4537347,
//         size.height * 0.3156584);
//     path_27.cubicTo(
//         size.width * 0.4617893,
//         size.height * 0.3144566,
//         size.width * 0.4752565,
//         size.height * 0.3124801,
//         size.width * 0.4864426,
//         size.height * 0.3135444);
//     path_27.cubicTo(
//         size.width * 0.4978478,
//         size.height * 0.3146231,
//         size.width * 0.4997551,
//         size.height * 0.3186050,
//         size.width * 0.4999871,
//         size.height * 0.3228548);
//     path_27.cubicTo(
//         size.width * 0.5002191,
//         size.height * 0.3186050,
//         size.width * 0.5021264,
//         size.height * 0.3146303,
//         size.width * 0.5135316,
//         size.height * 0.3135444);
//     path_27.cubicTo(
//         size.width * 0.5247307,
//         size.height * 0.3124801,
//         size.width * 0.5381978,
//         size.height * 0.3144638,
//         size.width * 0.5462395,
//         size.height * 0.3156584);
//     path_27.cubicTo(
//         size.width * 0.5468710,
//         size.height * 0.3157453,
//         size.width * 0.5475024,
//         size.height * 0.3158539,
//         size.width * 0.5480566,
//         size.height * 0.3159263);
//     path_27.cubicTo(
//         size.width * 0.5482370,
//         size.height * 0.3159552,
//         size.width * 0.5483530,
//         size.height * 0.3160566,
//         size.width * 0.5482886,
//         size.height * 0.3161507);
//     path_27.cubicTo(
//         size.width * 0.5482370,
//         size.height * 0.3162521,
//         size.width * 0.5480566,
//         size.height * 0.3163172,
//         size.width * 0.5478891,
//         size.height * 0.3162810);
//     path_27.close();
//     path_27.moveTo(size.width * 0.5663694, size.height * 0.3145941);
//     path_27.lineTo(size.width * 0.5662663, size.height * 0.3145941);
//     path_27.cubicTo(
//         size.width * 0.5450152,
//         size.height * 0.3111190,
//         size.width * 0.5305686,
//         size.height * 0.3090484,
//         size.width * 0.5094206,
//         size.height * 0.3092656);
//     path_27.cubicTo(
//         size.width * 0.5017140,
//         size.height * 0.3092511,
//         size.width * 0.5002835,
//         size.height * 0.3041760,
//         size.width * 0.5000000,
//         size.height * 0.2978990);
//     path_27.cubicTo(
//         size.width * 0.4997036,
//         size.height * 0.3041760,
//         size.width * 0.4982860,
//         size.height * 0.3092511,
//         size.width * 0.4905794,
//         size.height * 0.3092656);
//     path_27.cubicTo(
//         size.width * 0.4694572,
//         size.height * 0.3090122,
//         size.width * 0.4549848,
//         size.height * 0.3111118,
//         size.width * 0.4337337,
//         size.height * 0.3145941);
//     path_27.lineTo(size.width * 0.4336306, size.height * 0.3145941);
//     path_27.cubicTo(
//         size.width * 0.4335017,
//         size.height * 0.3145941,
//         size.width * 0.4333729,
//         size.height * 0.3145507,
//         size.width * 0.4333084,
//         size.height * 0.3144638);
//     path_27.cubicTo(
//         size.width * 0.4332440,
//         size.height * 0.3143769,
//         size.width * 0.4333600,
//         size.height * 0.3142683,
//         size.width * 0.4335404,
//         size.height * 0.3142394);
//     path_27.cubicTo(
//         size.width * 0.4548430,
//         size.height * 0.3107642,
//         size.width * 0.4693412,
//         size.height * 0.3086792,
//         size.width * 0.4905665,
//         size.height * 0.3088964);
//     path_27.cubicTo(
//         size.width * 0.4993814,
//         size.height * 0.3088819,
//         size.width * 0.4993814,
//         size.height * 0.3013669,
//         size.width * 0.4993814,
//         size.height * 0.2934175);
//     path_27.cubicTo(
//         size.width * 0.4993814,
//         size.height * 0.2933162,
//         size.width * 0.4995361,
//         size.height * 0.2932220,
//         size.width * 0.4997294,
//         size.height * 0.2932220);
//     path_27.cubicTo(
//         size.width * 0.4998325,
//         size.height * 0.2932220,
//         size.width * 0.4999356,
//         size.height * 0.2932510,
//         size.width * 0.4999871,
//         size.height * 0.2933089);
//     path_27.arcToPoint(Offset(size.width * 0.5002449, size.height * 0.2932220),
//         radius: Radius.elliptical(
//             size.width * 0.0002835198, size.height * 0.0001592772),
//         rotation: 0,
//         largeArc: false,
//         clockwise: true);
//     path_27.cubicTo(
//         size.width * 0.5004253,
//         size.height * 0.2932220,
//         size.width * 0.5005928,
//         size.height * 0.2933089,
//         size.width * 0.5005928,
//         size.height * 0.2934175);
//     path_27.cubicTo(
//         size.width * 0.5005928,
//         size.height * 0.3013669,
//         size.width * 0.5005928,
//         size.height * 0.3088819,
//         size.width * 0.5094077,
//         size.height * 0.3088964);
//     path_27.cubicTo(
//         size.width * 0.5306330,
//         size.height * 0.3086574,
//         size.width * 0.5451054,
//         size.height * 0.3107642,
//         size.width * 0.5664338,
//         size.height * 0.3142394);
//     path_27.cubicTo(
//         size.width * 0.5666143,
//         size.height * 0.3142683,
//         size.width * 0.5667302,
//         size.height * 0.3143697,
//         size.width * 0.5666658,
//         size.height * 0.3144638);
//     path_27.cubicTo(
//         size.width * 0.5666143,
//         size.height * 0.3145507,
//         size.width * 0.5664854,
//         size.height * 0.3145941,
//         size.width * 0.5663436,
//         size.height * 0.3145941);
//     path_27.close();

//     Paint paint27Fill = Paint()..style = PaintingStyle.fill;
//     paint27Fill.color = randomColor().withOpacity(1.0);
//     canvas.drawPath(path_27, paint27Fill);

//     Path path_28 = Path();
//     path_28.moveTo(size.width * 0.4993943, size.height * 0.1989155);
//     path_28.lineTo(size.width * 0.4993943, size.height * 0.2402624);
//     path_28.cubicTo(
//         size.width * 0.4993943,
//         size.height * 0.2487982,
//         size.width * 0.4941363,
//         size.height * 0.2569720,
//         size.width * 0.4845868,
//         size.height * 0.2632562);
//     path_28.cubicTo(
//         size.width * 0.4742126,
//         size.height * 0.2700762,
//         size.width * 0.4616475,
//         size.height * 0.2753613,
//         size.width * 0.4472009,
//         size.height * 0.2789305);
//     path_28.lineTo(size.width * 0.4469689, size.height * 0.2789740);
//     path_28.lineTo(size.width * 0.4469431, size.height * 0.2789884);
//     path_28.cubicTo(
//         size.width * 0.4445719,
//         size.height * 0.2794735,
//         size.width * 0.4421104,
//         size.height * 0.2800093,
//         size.width * 0.4396618,
//         size.height * 0.2805885);
//     path_28.cubicTo(
//         size.width * 0.4395587,
//         size.height * 0.2806029,
//         size.width * 0.4394556,
//         size.height * 0.2806319,
//         size.width * 0.4393654,
//         size.height * 0.2806464);
//     path_28.cubicTo(
//         size.width * 0.4022372,
//         size.height * 0.2877487,
//         size.width * 0.3601861,
//         size.height * 0.2819351,
//         size.width * 0.3321176,
//         size.height * 0.2658481);
//     path_28.cubicTo(
//         size.width * 0.3319888,
//         size.height * 0.2657902,
//         size.width * 0.3318857,
//         size.height * 0.2657178,
//         size.width * 0.3317439,
//         size.height * 0.2656381);
//     path_28.cubicTo(
//         size.width * 0.3314475,
//         size.height * 0.2654571,
//         size.width * 0.3311640,
//         size.height * 0.2652689,
//         size.width * 0.3308676,
//         size.height * 0.2650879);
//     path_28.cubicTo(
//         size.width * 0.3308418,
//         size.height * 0.2650734,
//         size.width * 0.3308160,
//         size.height * 0.2650589,
//         size.width * 0.3307645,
//         size.height * 0.2650589);
//     path_28.cubicTo(
//         size.width * 0.3307645,
//         size.height * 0.2650589,
//         size.width * 0.3307645,
//         size.height * 0.2650445,
//         size.width * 0.3307387,
//         size.height * 0.2650445);
//     path_28.arcToPoint(Offset(size.width * 0.3260864, size.height * 0.2620978),
//         radius:
//             Radius.elliptical(size.width * 0.1143152, size.height * 0.06422056),
//         rotation: 0,
//         largeArc: false,
//         clockwise: true);
//     path_28.cubicTo(
//         size.width * 0.3156091,
//         size.height * 0.2549666,
//         size.width * 0.3034564,
//         size.height * 0.2479946,
//         size.width * 0.2809165,
//         size.height * 0.2479946);
//     path_28.cubicTo(
//         size.width * 0.2808650,
//         size.height * 0.2479946,
//         size.width * 0.2808392,
//         size.height * 0.2479946,
//         size.width * 0.2807877,
//         size.height * 0.2480090);
//     path_28.lineTo(size.width * 0.2807619, size.height * 0.2480090);
//     path_28.cubicTo(
//         size.width * 0.2796536,
//         size.height * 0.2479946,
//         size.width * 0.2784680,
//         size.height * 0.2479946,
//         size.width * 0.2773081,
//         size.height * 0.2479946);
//     path_28.cubicTo(
//         size.width * 0.3437419,
//         size.height * 0.2403131,
//         size.width * 0.3781638,
//         size.height * 0.2244939,
//         size.width * 0.4114645,
//         size.height * 0.2091961);
//     path_28.cubicTo(
//         size.width * 0.4321357,
//         size.height * 0.1996974,
//         size.width * 0.4516470,
//         size.height * 0.1907272,
//         size.width * 0.4781303,
//         size.height * 0.1836973);
//     path_28.cubicTo(
//         size.width * 0.4864684,
//         size.height * 0.1857244,
//         size.width * 0.4913784,
//         size.height * 0.1884177,
//         size.width * 0.4942909,
//         size.height * 0.1907417);
//     path_28.cubicTo(
//         size.width * 0.4993556,
//         size.height * 0.1948249,
//         size.width * 0.4994072,
//         size.height * 0.1987055,
//         size.width * 0.4994072,
//         size.height * 0.1989082);
//     path_28.close();

//     Paint paint28Fill = Paint()..style = PaintingStyle.fill;
//     paint28Fill.color = randomColor().withOpacity(1.0);
//     canvas.drawPath(path_28, paint28Fill);

//     Path path_29 = Path();
//     path_29.moveTo(size.width * 0.7227048, size.height * 0.2480018);
//     path_29.cubicTo(
//         size.width * 0.7215449,
//         size.height * 0.2480018,
//         size.width * 0.7203593,
//         size.height * 0.2480018,
//         size.width * 0.7192510,
//         size.height * 0.2480163);
//     path_29.lineTo(size.width * 0.7192252, size.height * 0.2480163);
//     path_29.cubicTo(
//         size.width * 0.7192252,
//         size.height * 0.2480163,
//         size.width * 0.7191479,
//         size.height * 0.2480018,
//         size.width * 0.7190963,
//         size.height * 0.2480018);
//     path_29.cubicTo(
//         size.width * 0.6965436,
//         size.height * 0.2480018,
//         size.width * 0.6844038,
//         size.height * 0.2549738,
//         size.width * 0.6739265,
//         size.height * 0.2621051);
//     path_29.arcToPoint(Offset(size.width * 0.6692742, size.height * 0.2650517),
//         radius:
//             Radius.elliptical(size.width * 0.1143152, size.height * 0.06422056),
//         rotation: 0,
//         largeArc: false,
//         clockwise: true);
//     path_29.cubicTo(
//         size.width * 0.6692484,
//         size.height * 0.2650517,
//         size.width * 0.6692484,
//         size.height * 0.2650662,
//         size.width * 0.6692484,
//         size.height * 0.2650662);
//     path_29.cubicTo(
//         size.width * 0.6691969,
//         size.height * 0.2650662,
//         size.width * 0.6691711,
//         size.height * 0.2650807,
//         size.width * 0.6691453,
//         size.height * 0.2650951);
//     path_29.cubicTo(
//         size.width * 0.6688489,
//         size.height * 0.2652761,
//         size.width * 0.6685654,
//         size.height * 0.2654644,
//         size.width * 0.6682690,
//         size.height * 0.2656454);
//     path_29.cubicTo(
//         size.width * 0.6681401,
//         size.height * 0.2657178,
//         size.width * 0.6680370,
//         size.height * 0.2657902,
//         size.width * 0.6678953,
//         size.height * 0.2658553);
//     path_29.cubicTo(
//         size.width * 0.6398268,
//         size.height * 0.2819423,
//         size.width * 0.5977757,
//         size.height * 0.2877559,
//         size.width * 0.5606475,
//         size.height * 0.2806536);
//     path_29.cubicTo(
//         size.width * 0.5605701,
//         size.height * 0.2806391,
//         size.width * 0.5604670,
//         size.height * 0.2806102,
//         size.width * 0.5603510,
//         size.height * 0.2805957);
//     path_29.cubicTo(
//         size.width * 0.5578896,
//         size.height * 0.2800165,
//         size.width * 0.5554410,
//         size.height * 0.2794880,
//         size.width * 0.5530697,
//         size.height * 0.2789957);
//     path_29.lineTo(size.width * 0.5530440, size.height * 0.2789812);
//     path_29.lineTo(size.width * 0.5528120, size.height * 0.2789378);
//     path_29.cubicTo(
//         size.width * 0.5383654,
//         size.height * 0.2753685,
//         size.width * 0.5258003,
//         size.height * 0.2700906,
//         size.width * 0.5154261,
//         size.height * 0.2632634);
//     path_29.cubicTo(
//         size.width * 0.5058637,
//         size.height * 0.2569720,
//         size.width * 0.5006186,
//         size.height * 0.2488054,
//         size.width * 0.5006186,
//         size.height * 0.2402696);
//     path_29.lineTo(size.width * 0.5006186, size.height * 0.1989082);
//     path_29.cubicTo(
//         size.width * 0.5006186,
//         size.height * 0.1989082,
//         size.width * 0.5005670,
//         size.height * 0.1949263,
//         size.width * 0.5057348,
//         size.height * 0.1907561);
//     path_29.cubicTo(
//         size.width * 0.5086087,
//         size.height * 0.1884321,
//         size.width * 0.5135445,
//         size.height * 0.1857389,
//         size.width * 0.5218955,
//         size.height * 0.1837117);
//     path_29.cubicTo(
//         size.width * 0.5483788,
//         size.height * 0.1907417,
//         size.width * 0.5678901,
//         size.height * 0.1997119,
//         size.width * 0.5885613,
//         size.height * 0.2092106);
//     path_29.cubicTo(
//         size.width * 0.6218491,
//         size.height * 0.2245084,
//         size.width * 0.6562838,
//         size.height * 0.2403275,
//         size.width * 0.7227177,
//         size.height * 0.2480090);
//     path_29.close();

//     Paint paint29Fill = Paint()..style = PaintingStyle.fill;
//     paint29Fill.color = randomColor().withOpacity(1.0);
//     canvas.drawPath(path_29, paint29Fill);

//     Path path_30 = Path();
//     path_30.moveTo(size.width * 0.7259266, size.height * 0.2479873);
//     path_30.cubicTo(
//         size.width * 0.6576241,
//         size.height * 0.2404723,
//         size.width * 0.6227254,
//         size.height * 0.2244288,
//         size.width * 0.5889737,
//         size.height * 0.2089065);
//     path_30.cubicTo(
//         size.width * 0.5684314,
//         size.height * 0.1994657,
//         size.width * 0.5489716,
//         size.height * 0.1905389,
//         size.width * 0.5227074,
//         size.height * 0.1835163);
//     path_30.cubicTo(
//         size.width * 0.5280169,
//         size.height * 0.1822855,
//         size.width * 0.5346667,
//         size.height * 0.1813298,
//         size.width * 0.5429532,
//         size.height * 0.1808954);
//     path_30.cubicTo(
//         size.width * 0.5667174,
//         size.height * 0.1796212,
//         size.width * 0.5801588,
//         size.height * 0.1818583,
//         size.width * 0.5873628,
//         size.height * 0.1830529);
//     path_30.cubicTo(
//         size.width * 0.5877365,
//         size.height * 0.1831108,
//         size.width * 0.5880973,
//         size.height * 0.1831687,
//         size.width * 0.5884453,
//         size.height * 0.1832339);
//     path_30.cubicTo(
//         size.width * 0.5884711,
//         size.height * 0.1832339,
//         size.width * 0.5885226,
//         size.height * 0.1832484,
//         size.width * 0.5885484,
//         size.height * 0.1832484);
//     path_30.cubicTo(
//         size.width * 0.5886257,
//         size.height * 0.1832629,
//         size.width * 0.5886773,
//         size.height * 0.1832773,
//         size.width * 0.5887546,
//         size.height * 0.1832918);
//     path_30.cubicTo(
//         size.width * 0.5891025,
//         size.height * 0.1833497,
//         size.width * 0.5894634,
//         size.height * 0.1834221,
//         size.width * 0.5898371,
//         size.height * 0.1834873);
//     path_30.cubicTo(
//         size.width * 0.5939353,
//         size.height * 0.1842547,
//         size.width * 0.6070287,
//         size.height * 0.1868611,
//         size.width * 0.6177509,
//         size.height * 0.1906765);
//     path_30.cubicTo(
//         size.width * 0.6339373,
//         size.height * 0.1964467,
//         size.width * 0.6405098,
//         size.height * 0.2013191,
//         size.width * 0.6504588,
//         size.height * 0.2087183);
//     path_30.cubicTo(
//         size.width * 0.6549693,
//         size.height * 0.2120631,
//         size.width * 0.6600985,
//         size.height * 0.2158640,
//         size.width * 0.6670962,
//         size.height * 0.2204830);
//     path_30.lineTo(size.width * 0.6671736, size.height * 0.2205265);
//     path_30.cubicTo(
//         size.width * 0.6745966,
//         size.height * 0.2254134,
//         size.width * 0.6900613,
//         size.height * 0.2355782,
//         size.width * 0.7097917,
//         size.height * 0.2430642);
//     path_30.cubicTo(
//         size.width * 0.7136193,
//         size.height * 0.2445267,
//         size.width * 0.7190061,
//         size.height * 0.2458878,
//         size.width * 0.7258750,
//         size.height * 0.2471185);
//     path_30.cubicTo(
//         size.width * 0.7259008,
//         size.height * 0.2474154,
//         size.width * 0.7259266,
//         size.height * 0.2477122,
//         size.width * 0.7259266,
//         size.height * 0.2479946);
//     path_30.close();

//     Paint paint30Fill = Paint()..style = PaintingStyle.fill;
//     paint30Fill.color = randomColor().withOpacity(1.0);
//     canvas.drawPath(path_30, paint30Fill);

//     Path path_31 = Path();
//     path_31.moveTo(size.width * 0.4772669, size.height * 0.1835090);
//     path_31.cubicTo(
//         size.width * 0.4510026,
//         size.height * 0.1905534,
//         size.width * 0.4315686,
//         size.height * 0.1994729,
//         size.width * 0.4110263,
//         size.height * 0.2088992);
//     path_31.cubicTo(
//         size.width * 0.3773133,
//         size.height * 0.2244215,
//         size.width * 0.3423759,
//         size.height * 0.2404651,
//         size.width * 0.2740992,
//         size.height * 0.2479801);
//     path_31.cubicTo(
//         size.width * 0.2740992,
//         size.height * 0.2476977,
//         size.width * 0.2741250,
//         size.height * 0.2474009,
//         size.width * 0.2741507,
//         size.height * 0.2471041);
//     path_31.cubicTo(
//         size.width * 0.2809939,
//         size.height * 0.2458733,
//         size.width * 0.2863807,
//         size.height * 0.2445122,
//         size.width * 0.2902083,
//         size.height * 0.2430497);
//     path_31.cubicTo(
//         size.width * 0.3099258,
//         size.height * 0.2355637,
//         size.width * 0.3254034,
//         size.height * 0.2253989,
//         size.width * 0.3328264,
//         size.height * 0.2205120);
//     path_31.lineTo(size.width * 0.3329038, size.height * 0.2204686);
//     path_31.cubicTo(
//         size.width * 0.3399015,
//         size.height * 0.2158495,
//         size.width * 0.3450178,
//         size.height * 0.2120486,
//         size.width * 0.3495412,
//         size.height * 0.2087038);
//     path_31.cubicTo(
//         size.width * 0.3594644,
//         size.height * 0.2013046,
//         size.width * 0.3660369,
//         size.height * 0.1964394,
//         size.width * 0.3822491,
//         size.height * 0.1906620);
//     path_31.cubicTo(
//         size.width * 0.3929713,
//         size.height * 0.1868466,
//         size.width * 0.4060647,
//         size.height * 0.1842402,
//         size.width * 0.4101629,
//         size.height * 0.1834728);
//     path_31.cubicTo(
//         size.width * 0.4105366,
//         size.height * 0.1834149,
//         size.width * 0.4108975,
//         size.height * 0.1833425,
//         size.width * 0.4112454,
//         size.height * 0.1832773);
//     path_31.cubicTo(
//         size.width * 0.4113227,
//         size.height * 0.1832629,
//         size.width * 0.4113743,
//         size.height * 0.1832484,
//         size.width * 0.4114516,
//         size.height * 0.1832339);
//     path_31.cubicTo(
//         size.width * 0.4114774,
//         size.height * 0.1832339,
//         size.width * 0.4115289,
//         size.height * 0.1832194,
//         size.width * 0.4115547,
//         size.height * 0.1832194);
//     path_31.cubicTo(
//         size.width * 0.4119027,
//         size.height * 0.1831615,
//         size.width * 0.4122635,
//         size.height * 0.1831036,
//         size.width * 0.4126372,
//         size.height * 0.1830384);
//     path_31.cubicTo(
//         size.width * 0.4198412,
//         size.height * 0.1818366,
//         size.width * 0.4332826,
//         size.height * 0.1796067,
//         size.width * 0.4570468,
//         size.height * 0.1808809);
//     path_31.cubicTo(
//         size.width * 0.4653333,
//         size.height * 0.1813081,
//         size.width * 0.4719960,
//         size.height * 0.1822710,
//         size.width * 0.4772669,
//         size.height * 0.1835018);
//     path_31.close();

//     Paint paint31Fill = Paint()..style = PaintingStyle.fill;
//     paint31Fill.color = randomColor().withOpacity(1.0);
//     canvas.drawPath(path_31, paint31Fill);

//     Path path_32 = Path();
//     path_32.moveTo(size.width * 0.3513583, size.height * 0.1773841);
//     path_32.cubicTo(
//         size.width * 0.3226068,
//         size.height * 0.1856882,
//         size.width * 0.3013557,
//         size.height * 0.1976123,
//         size.width * 0.2881978,
//         size.height * 0.2128233);
//     path_32.cubicTo(
//         size.width * 0.2769988,
//         size.height * 0.2257682,
//         size.width * 0.2740219,
//         size.height * 0.2384379,
//         size.width * 0.2734935,
//         size.height * 0.2468289);
//     path_32.cubicTo(
//         size.width * 0.2705938,
//         size.height * 0.2473647,
//         size.width * 0.2674494,
//         size.height * 0.2478498,
//         size.width * 0.2640471,
//         size.height * 0.2483203);
//     path_32.cubicTo(
//         size.width * 0.2640213,
//         size.height * 0.2483203,
//         size.width * 0.2639698,
//         size.height * 0.2483348,
//         size.width * 0.2639440,
//         size.height * 0.2483348);
//     path_32.cubicTo(
//         size.width * 0.2638667,
//         size.height * 0.2483348,
//         size.width * 0.2637894,
//         size.height * 0.2483348,
//         size.width * 0.2637120,
//         size.height * 0.2483493);
//     path_32.cubicTo(
//         size.width * 0.2596397,
//         size.height * 0.2486172,
//         size.width * 0.2543430,
//         size.height * 0.2491167,
//         size.width * 0.2482989,
//         size.height * 0.2501086);
//     path_32.lineTo(size.width * 0.2482473, size.height * 0.2501086);
//     path_32.cubicTo(
//         size.width * 0.2481700,
//         size.height * 0.2501086,
//         size.width * 0.2481185,
//         size.height * 0.2501231,
//         size.width * 0.2480669,
//         size.height * 0.2501376);
//     path_32.cubicTo(
//         size.width * 0.2440847,
//         size.height * 0.2507891,
//         size.width * 0.2397804,
//         size.height * 0.2516435,
//         size.width * 0.2353085,
//         size.height * 0.2527584);
//     path_32.arcToPoint(Offset(size.width * 0.2221377, size.height * 0.2567838),
//         radius: Radius.elliptical(
//             size.width * 0.09477679, size.height * 0.05324419),
//         rotation: 0,
//         largeArc: false,
//         clockwise: false);
//     path_32.cubicTo(
//         size.width * 0.2230914,
//         size.height * 0.2560019,
//         size.width * 0.2237486,
//         size.height * 0.2551837,
//         size.width * 0.2243286,
//         size.height * 0.2541774);
//     path_32.cubicTo(
//         size.width * 0.2327568,
//         size.height * 0.2362153,
//         size.width * 0.2374736,
//         size.height * 0.2296994,
//         size.width * 0.2406181,
//         size.height * 0.2253772);
//     path_32.cubicTo(
//         size.width * 0.2421259,
//         size.height * 0.2233066,
//         size.width * 0.2433115,
//         size.height * 0.2216631,
//         size.width * 0.2444198,
//         size.height * 0.2194550);
//     path_32.cubicTo(
//         size.width * 0.2528996,
//         size.height * 0.2039617,
//         size.width * 0.2735708,
//         size.height * 0.1845298,
//         size.width * 0.3239729,
//         size.height * 0.1799470);
//     path_32.cubicTo(
//         size.width * 0.3250296,
//         size.height * 0.1798601,
//         size.width * 0.3257642,
//         size.height * 0.1797805,
//         size.width * 0.3261895,
//         size.height * 0.1797226);
//     path_32.lineTo(size.width * 0.3263699, size.height * 0.1796936);
//     path_32.cubicTo(
//         size.width * 0.3283803,
//         size.height * 0.1794113,
//         size.width * 0.3318083,
//         size.height * 0.1789262,
//         size.width * 0.3354297,
//         size.height * 0.1784049);
//     path_32.lineTo(size.width * 0.3354554, size.height * 0.1784049);
//     path_32.lineTo(size.width * 0.3355585, size.height * 0.1783904);
//     path_32.lineTo(size.width * 0.3356359, size.height * 0.1783904);
//     path_32.cubicTo(
//         size.width * 0.3356359,
//         size.height * 0.1783904,
//         size.width * 0.3357390,
//         size.height * 0.1783760,
//         size.width * 0.3357905,
//         size.height * 0.1783615);
//     path_32.cubicTo(
//         size.width * 0.3409712,
//         size.height * 0.1777968,
//         size.width * 0.3461905,
//         size.height * 0.1774854,
//         size.width * 0.3513712,
//         size.height * 0.1773696);
//     path_32.close();

//     Paint paint32Fill = Paint()..style = PaintingStyle.fill;
//     paint32Fill.color = randomColor().withOpacity(1.0);
//     canvas.drawPath(path_32, paint32Fill);

//     Path path_33 = Path();
//     path_33.moveTo(size.width * 0.7779138, size.height * 0.2567910);
//     path_33.arcToPoint(Offset(size.width * 0.7647173, size.height * 0.2527656),
//         radius: Radius.elliptical(
//             size.width * 0.09433863, size.height * 0.05299803),
//         rotation: 0,
//         largeArc: false,
//         clockwise: false);
//     path_33.cubicTo(
//         size.width * 0.7602067,
//         size.height * 0.2516435,
//         size.width * 0.7559024,
//         size.height * 0.2507819,
//         size.width * 0.7518815,
//         size.height * 0.2501303);
//     path_33.cubicTo(
//         size.width * 0.7518300,
//         size.height * 0.2501303,
//         size.width * 0.7517784,
//         size.height * 0.2501158,
//         size.width * 0.7517269,
//         size.height * 0.2501158);
//     path_33.arcToPoint(Offset(size.width * 0.7363137, size.height * 0.2483565),
//         radius: Radius.elliptical(
//             size.width * 0.09414145, size.height * 0.05288726),
//         rotation: 0,
//         largeArc: false,
//         clockwise: false);
//     path_33.cubicTo(
//         size.width * 0.7362364,
//         size.height * 0.2483421,
//         size.width * 0.7361591,
//         size.height * 0.2483421,
//         size.width * 0.7361075,
//         size.height * 0.2483421);
//     path_33.lineTo(size.width * 0.7360560, size.height * 0.2483276);
//     path_33.cubicTo(
//         size.width * 0.7326280,
//         size.height * 0.2478570,
//         size.width * 0.7294577,
//         size.height * 0.2473647,
//         size.width * 0.7265452,
//         size.height * 0.2468507);
//     path_33.cubicTo(
//         size.width * 0.7260168,
//         size.height * 0.2384596,
//         size.width * 0.7230012,
//         size.height * 0.2257899,
//         size.width * 0.7118150,
//         size.height * 0.2128305);
//     path_33.cubicTo(
//         size.width * 0.6986700,
//         size.height * 0.1976195,
//         size.width * 0.6774189,
//         size.height * 0.1856882,
//         size.width * 0.6486546,
//         size.height * 0.1773913);
//     path_33.cubicTo(
//         size.width * 0.6539383,
//         size.height * 0.1775072,
//         size.width * 0.6592737,
//         size.height * 0.1778330,
//         size.width * 0.6645446,
//         size.height * 0.1784266);
//     path_33.lineTo(size.width * 0.6645961, size.height * 0.1784266);
//     path_33.cubicTo(
//         size.width * 0.6661812,
//         size.height * 0.1786511,
//         size.width * 0.6677148,
//         size.height * 0.1788683,
//         size.width * 0.6691324,
//         size.height * 0.1790782);
//     path_33.cubicTo(
//         size.width * 0.6710397,
//         size.height * 0.1793461,
//         size.width * 0.6727022,
//         size.height * 0.1795778,
//         size.width * 0.6738105,
//         size.height * 0.1797443);
//     path_33.cubicTo(
//         size.width * 0.6742358,
//         size.height * 0.1798022,
//         size.width * 0.6749704,
//         size.height * 0.1798746,
//         size.width * 0.6760271,
//         size.height * 0.1799687);
//     path_33.cubicTo(
//         size.width * 0.7264292,
//         size.height * 0.1845298,
//         size.width * 0.7471261,
//         size.height * 0.2039689,
//         size.width * 0.7556060,
//         size.height * 0.2194767);
//     path_33.cubicTo(
//         size.width * 0.7567143,
//         size.height * 0.2216849,
//         size.width * 0.7578999,
//         size.height * 0.2233356,
//         size.width * 0.7594335,
//         size.height * 0.2254279);
//     path_33.cubicTo(
//         size.width * 0.7625522,
//         size.height * 0.2297501,
//         size.width * 0.7673076,
//         size.height * 0.2362732,
//         size.width * 0.7756972,
//         size.height * 0.2542136);
//     path_33.cubicTo(
//         size.width * 0.7763029,
//         size.height * 0.2552923,
//         size.width * 0.7770117,
//         size.height * 0.2560960,
//         size.width * 0.7779138,
//         size.height * 0.2568055);
//     path_33.close();

//     Paint paint33Fill = Paint()..style = PaintingStyle.fill;
//     paint33Fill.color = randomColor().withOpacity(1.0);
//     canvas.drawPath(path_33, paint33Fill);

//     Path path_34 = Path();
//     path_34.moveTo(size.width * 0.4103304, size.height * 0.1830529);
//     path_34.cubicTo(
//         size.width * 0.4102016,
//         size.height * 0.1830819,
//         size.width * 0.4100985,
//         size.height * 0.1830963,
//         size.width * 0.4099567,
//         size.height * 0.1831253);
//     path_34.cubicTo(
//         size.width * 0.4095314,
//         size.height * 0.1831832,
//         size.width * 0.4091319,
//         size.height * 0.1832556,
//         size.width * 0.4087195,
//         size.height * 0.1833208);
//     path_34.cubicTo(
//         size.width * 0.4086422,
//         size.height * 0.1833353,
//         size.width * 0.4085906,
//         size.height * 0.1833497,
//         size.width * 0.4085649,
//         size.height * 0.1833932);
//     path_34.lineTo(size.width * 0.4085391, size.height * 0.1833932);
//     path_34.cubicTo(
//         size.width * 0.4033326,
//         size.height * 0.1844140,
//         size.width * 0.3916439,
//         size.height * 0.1868828,
//         size.width * 0.3819011,
//         size.height * 0.1903652);
//     path_34.cubicTo(
//         size.width * 0.3655859,
//         size.height * 0.1961643,
//         size.width * 0.3589876,
//         size.height * 0.2010657,
//         size.width * 0.3489999,
//         size.height * 0.2084938);
//     path_34.cubicTo(
//         size.width * 0.3444894,
//         size.height * 0.2118386,
//         size.width * 0.3393603,
//         size.height * 0.2156251,
//         size.width * 0.3323625,
//         size.height * 0.2202441);
//     path_34.lineTo(size.width * 0.3323109, size.height * 0.2202876);
//     path_34.cubicTo(
//         size.width * 0.3248879,
//         size.height * 0.2251528,
//         size.width * 0.3095005,
//         size.height * 0.2352958,
//         size.width * 0.2898345,
//         size.height * 0.2427674);
//     path_34.cubicTo(
//         size.width * 0.2860843,
//         size.height * 0.2441864,
//         size.width * 0.2808263,
//         size.height * 0.2455185,
//         size.width * 0.2741765,
//         size.height * 0.2467203);
//     path_34.cubicTo(
//         size.width * 0.2753106,
//         size.height * 0.2286931,
//         size.width * 0.2871926,
//         size.height * 0.1959761,
//         size.width * 0.3528532,
//         size.height * 0.1773768);
//     path_34.cubicTo(
//         size.width * 0.3802387,
//         size.height * 0.1769642,
//         size.width * 0.4053688,
//         size.height * 0.1819959,
//         size.width * 0.4103304,
//         size.height * 0.1830601);
//     path_34.close();

//     Paint paint34Fill = Paint()..style = PaintingStyle.fill;
//     paint34Fill.color = randomColor().withOpacity(1.0);
//     canvas.drawPath(path_34, paint34Fill);

//     Path path_35 = Path();
//     path_35.moveTo(size.width * 0.7258493, size.height * 0.2467276);
//     path_35.cubicTo(
//         size.width * 0.7191737,
//         size.height * 0.2455113,
//         size.width * 0.7139157,
//         size.height * 0.2441791,
//         size.width * 0.7101655,
//         size.height * 0.2427601);
//     path_35.cubicTo(
//         size.width * 0.6904995,
//         size.height * 0.2352886,
//         size.width * 0.6750735,
//         size.height * 0.2251528,
//         size.width * 0.6676891,
//         size.height * 0.2202803);
//     path_35.lineTo(size.width * 0.6676117, size.height * 0.2202369);
//     path_35.cubicTo(
//         size.width * 0.6606397,
//         size.height * 0.2156179,
//         size.width * 0.6555235,
//         size.height * 0.2118314,
//         size.width * 0.6510001,
//         size.height * 0.2084866);
//     path_35.cubicTo(
//         size.width * 0.6410253,
//         size.height * 0.2010585,
//         size.width * 0.6344141,
//         size.height * 0.1961571,
//         size.width * 0.6180989,
//         size.height * 0.1903579);
//     path_35.cubicTo(
//         size.width * 0.6083561,
//         size.height * 0.1868828,
//         size.width * 0.5966545,
//         size.height * 0.1844068,
//         size.width * 0.5914609,
//         size.height * 0.1833859);
//     path_35.lineTo(size.width * 0.5914351, size.height * 0.1833859);
//     path_35.cubicTo(
//         size.width * 0.5914094,
//         size.height * 0.1833425,
//         size.width * 0.5913578,
//         size.height * 0.1833280,
//         size.width * 0.5912805,
//         size.height * 0.1833135);
//     path_35.cubicTo(
//         size.width * 0.5908552,
//         size.height * 0.1832556,
//         size.width * 0.5904557,
//         size.height * 0.1831832,
//         size.width * 0.5900433,
//         size.height * 0.1831181);
//     path_35.cubicTo(
//         size.width * 0.5899144,
//         size.height * 0.1830891,
//         size.width * 0.5897856,
//         size.height * 0.1830746,
//         size.width * 0.5896438,
//         size.height * 0.1830457);
//     path_35.cubicTo(
//         size.width * 0.5945538,
//         size.height * 0.1819959,
//         size.width * 0.6197227,
//         size.height * 0.1769497,
//         size.width * 0.6471468,
//         size.height * 0.1773624);
//     path_35.lineTo(size.width * 0.6471725, size.height * 0.1773624);
//     path_35.cubicTo(
//         size.width * 0.7128589,
//         size.height * 0.1959761,
//         size.width * 0.7246894,
//         size.height * 0.2286931,
//         size.width * 0.7258493,
//         size.height * 0.2467203);
//     path_35.close();

//     Paint paint35Fill = Paint()..style = PaintingStyle.fill;
//     paint35Fill.color = randomColor().withOpacity(1.0);
//     canvas.drawPath(path_35, paint35Fill);

//     Path path_36 = Path();
//     path_36.moveTo(size.width * 0.08202742, size.height * 0.4549173);
//     path_36.cubicTo(
//         size.width * 0.08073870,
//         size.height * 0.4538386,
//         size.width * 0.08155060,
//         size.height * 0.4517390,
//         size.width * 0.08454044,
//         size.height * 0.4484811);
//     path_36.cubicTo(
//         size.width * 0.07970772,
//         size.height * 0.4495888,
//         size.width * 0.07490077,
//         size.height * 0.4501390,
//         size.width * 0.07044178,
//         size.height * 0.4501390);
//     path_36.cubicTo(
//         size.width * 0.06727151,
//         size.height * 0.4501390,
//         size.width * 0.06429455,
//         size.height * 0.4498567,
//         size.width * 0.06157534,
//         size.height * 0.4493137);
//     path_36.cubicTo(
//         size.width * 0.06154956,
//         size.height * 0.4493137,
//         size.width * 0.06149802,
//         size.height * 0.4493137,
//         size.width * 0.06144647,
//         size.height * 0.4492992);
//     path_36.cubicTo(
//         size.width * 0.06142069,
//         size.height * 0.4492992,
//         size.width * 0.06139492,
//         size.height * 0.4492847,
//         size.width * 0.06139492,
//         size.height * 0.4492702);
//     path_36.cubicTo(
//         size.width * 0.06068612,
//         size.height * 0.4491399,
//         size.width * 0.05999021,
//         size.height * 0.4489589,
//         size.width * 0.05933296,
//         size.height * 0.4487851);
//     path_36.cubicTo(
//         size.width * 0.05157482,
//         size.height * 0.4466132,
//         size.width * 0.04565957,
//         size.height * 0.4415525,
//         size.width * 0.04372648,
//         size.height * 0.4354638);
//     path_36.cubicTo(
//         size.width * 0.03955101,
//         size.height * 0.4405969,
//         size.width * 0.03680602,
//         size.height * 0.4454258,
//         size.width * 0.03393216,
//         size.height * 0.4505155);
//     path_36.cubicTo(
//         size.width * 0.02973091,
//         size.height * 0.4579146,
//         size.width * 0.02497551,
//         size.height * 0.4662912,
//         size.width * 0.01471725,
//         size.height * 0.4771654);
//     path_36.lineTo(size.width * 0.01445951, size.height * 0.4774478);
//     path_36.quadraticBezierTo(size.width * 0.006804474, size.height * 0.4858533,
//         size.width * 0.006456518, size.height * 0.4898207);
//     path_36.cubicTo(
//         size.width * 0.006327646,
//         size.height * 0.4915655,
//         size.width * 0.006108562,
//         size.height * 0.4939475,
//         size.width * 0.005219341,
//         size.height * 0.4980452);
//     path_36.cubicTo(
//         size.width * 0.002345482,
//         size.height * 0.5115259,
//         size.width * 0.002873859,
//         size.height * 0.5162463,
//         size.width * 0.003208928,
//         size.height * 0.5190698);
//     path_36.lineTo(size.width * 0.003234703, size.height * 0.5192943);
//     path_36.cubicTo(
//         size.width * 0.003531110,
//         size.height * 0.5218717,
//         size.width * 0.01002629,
//         size.height * 0.5347152,
//         size.width * 0.01076086,
//         size.height * 0.5361197);
//     path_36.cubicTo(
//         size.width * 0.01242332,
//         size.height * 0.5361632,
//         size.width * 0.02229496,
//         size.height * 0.5361776,
//         size.width * 0.02351925,
//         size.height * 0.5298717);
//     path_36.cubicTo(
//         size.width * 0.02349348,
//         size.height * 0.5298572,
//         size.width * 0.02349348,
//         size.height * 0.5298283,
//         size.width * 0.02349348,
//         size.height * 0.5298138);
//     path_36.cubicTo(
//         size.width * 0.02349348,
//         size.height * 0.5297993,
//         size.width * 0.02349348,
//         size.height * 0.5297993,
//         size.width * 0.02351925,
//         size.height * 0.5297848);
//     path_36.lineTo(size.width * 0.02351925, size.height * 0.5296473);
//     path_36.lineTo(size.width * 0.02420228, size.height * 0.5296690);
//     path_36.cubicTo(
//         size.width * 0.02543946,
//         size.height * 0.5297269,
//         size.width * 0.02991134,
//         size.height * 0.5297704,
//         size.width * 0.03248879,
//         size.height * 0.5282645);
//     path_36.cubicTo(
//         size.width * 0.03422857,
//         size.height * 0.5272581,
//         size.width * 0.03480850,
//         size.height * 0.5257305,
//         size.width * 0.03425434,
//         size.height * 0.5237178);
//     path_36.cubicTo(
//         size.width * 0.03301717,
//         size.height * 0.5195042,
//         size.width * 0.03342956,
//         size.height * 0.5172381,
//         size.width * 0.03393216,
//         size.height * 0.5146028);
//     path_36.cubicTo(
//         size.width * 0.03425434,
//         size.height * 0.5128725,
//         size.width * 0.03461519,
//         size.height * 0.5109032,
//         size.width * 0.03451209,
//         size.height * 0.5081231);
//     path_36.cubicTo(
//         size.width * 0.03440899,
//         size.height * 0.5052996,
//         size.width * 0.03594257,
//         size.height * 0.5035620,
//         size.width * 0.03757926,
//         size.height * 0.5017448);
//     path_36.cubicTo(
//         size.width * 0.03997629,
//         size.height * 0.4990081,
//         size.width * 0.04273416,
//         size.height * 0.4959312,
//         size.width * 0.04145832,
//         size.height * 0.4882931);
//     path_36.lineTo(size.width * 0.04136811, size.height * 0.4877429);
//     path_36.cubicTo(
//         size.width * 0.04488633,
//         size.height * 0.4849411,
//         size.width * 0.04904892,
//         size.height * 0.4843402,
//         size.width * 0.04925512,
//         size.height * 0.4843112);
//     path_36.cubicTo(
//         size.width * 0.04935821,
//         size.height * 0.4842822,
//         size.width * 0.04946131,
//         size.height * 0.4843112,
//         size.width * 0.04955152,
//         size.height * 0.4843402);
//     path_36.cubicTo(
//         size.width * 0.04962885,
//         size.height * 0.4843836,
//         size.width * 0.04968040,
//         size.height * 0.4844415,
//         size.width * 0.04968040,
//         size.height * 0.4844994);
//     path_36.cubicTo(
//         size.width * 0.04962885,
//         size.height * 0.4846660,
//         size.width * 0.04690963,
//         size.height * 0.5000941,
//         size.width * 0.05471932,
//         size.height * 0.5050534);
//     path_36.cubicTo(
//         size.width * 0.05625290,
//         size.height * 0.5060308,
//         size.width * 0.05814733,
//         size.height * 0.5065448,
//         size.width * 0.06028661,
//         size.height * 0.5065593);
//     path_36.lineTo(size.width * 0.06063457, size.height * 0.5065593);
//     path_36.cubicTo(
//         size.width * 0.07196247,
//         size.height * 0.5065593,
//         size.width * 0.07243930,
//         size.height * 0.5003475,
//         size.width * 0.07309655,
//         size.height * 0.4917610);
//     path_36.cubicTo(
//         size.width * 0.07325120,
//         size.height * 0.4895094,
//         size.width * 0.07344451,
//         size.height * 0.4871709,
//         size.width * 0.07383113,
//         size.height * 0.4847166);
//     path_36.cubicTo(
//         size.width * 0.07551936,
//         size.height * 0.4772740,
//         size.width * 0.07763287,
//         size.height * 0.4734876,
//         size.width * 0.08158926,
//         size.height * 0.4707799);
//     path_36.cubicTo(
//         size.width * 0.08604825,
//         size.height * 0.4677174,
//         size.width * 0.08984999,
//         size.height * 0.4609554,
//         size.width * 0.08204031,
//         size.height * 0.4549173);
//     path_36.close();

//     Paint paint36Fill = Paint()..style = PaintingStyle.fill;
//     paint36Fill.color = randomColor().withOpacity(1.0);
//     canvas.drawPath(path_36, paint36Fill);

//     Path path_37 = Path();
//     path_37.moveTo(size.width * 0.9947807, size.height * 0.4980380);
//     path_37.cubicTo(
//         size.width * 0.9939043,
//         size.height * 0.4939402,
//         size.width * 0.9936981,
//         size.height * 0.4915583,
//         size.width * 0.9935693,
//         size.height * 0.4898135);
//     path_37.quadraticBezierTo(size.width * 0.9932213, size.height * 0.4858461,
//         size.width * 0.9855663, size.height * 0.4774406);
//     path_37.lineTo(size.width * 0.9853085, size.height * 0.4771437);
//     path_37.cubicTo(
//         size.width * 0.9750374,
//         size.height * 0.4662694,
//         size.width * 0.9702820,
//         size.height * 0.4578929,
//         size.width * 0.9660936,
//         size.height * 0.4504938);
//     path_37.cubicTo(
//         size.width * 0.9632455,
//         size.height * 0.4454331,
//         size.width * 0.9605005,
//         size.height * 0.4405824,
//         size.width * 0.9562993,
//         size.height * 0.4354276);
//     path_37.cubicTo(
//         size.width * 0.9543662,
//         size.height * 0.4415380,
//         size.width * 0.9484638,
//         size.height * 0.4465987,
//         size.width * 0.9406928,
//         size.height * 0.4487779);
//     path_37.cubicTo(
//         size.width * 0.9400356,
//         size.height * 0.4489589,
//         size.width * 0.9393525,
//         size.height * 0.4491327,
//         size.width * 0.9386309,
//         size.height * 0.4492630);
//     path_37.cubicTo(
//         size.width * 0.9386309,
//         size.height * 0.4492775,
//         size.width * 0.9386051,
//         size.height * 0.4492919,
//         size.width * 0.9385793,
//         size.height * 0.4492919);
//     path_37.cubicTo(
//         size.width * 0.9385278,
//         size.height * 0.4493064,
//         size.width * 0.9384762,
//         size.height * 0.4493064,
//         size.width * 0.9384504,
//         size.height * 0.4493064);
//     path_37.cubicTo(
//         size.width * 0.9357312,
//         size.height * 0.4498567,
//         size.width * 0.9327414,
//         size.height * 0.4501318,
//         size.width * 0.9295840,
//         size.height * 0.4501318);
//     path_37.cubicTo(
//         size.width * 0.9251250,
//         size.height * 0.4501318,
//         size.width * 0.9203181,
//         size.height * 0.4495815,
//         size.width * 0.9155111,
//         size.height * 0.4484738);
//     path_37.cubicTo(
//         size.width * 0.9179339,
//         size.height * 0.4511526,
//         size.width * 0.9194417,
//         size.height * 0.4536938,
//         size.width * 0.9179984,
//         size.height * 0.4549101);
//     path_37.cubicTo(
//         size.width * 0.9102144,
//         size.height * 0.4609192,
//         size.width * 0.9141451,
//         size.height * 0.4678115,
//         size.width * 0.9184236,
//         size.height * 0.4707582);
//     path_37.cubicTo(
//         size.width * 0.9224058,
//         size.height * 0.4734948,
//         size.width * 0.9245193,
//         size.height * 0.4772668,
//         size.width * 0.9262075,
//         size.height * 0.4847094);
//     path_37.cubicTo(
//         size.width * 0.9266070,
//         size.height * 0.4871637,
//         size.width * 0.9267617,
//         size.height * 0.4895022,
//         size.width * 0.9269421,
//         size.height * 0.4917683);
//     path_37.cubicTo(
//         size.width * 0.9275994,
//         size.height * 0.5003330,
//         size.width * 0.9280762,
//         size.height * 0.5065521,
//         size.width * 0.9393783,
//         size.height * 0.5065521);
//     path_37.lineTo(size.width * 0.9397520, size.height * 0.5065521);
//     path_37.cubicTo(
//         size.width * 0.9419171,
//         size.height * 0.5065231,
//         size.width * 0.9437858,
//         size.height * 0.5060163,
//         size.width * 0.9453193,
//         size.height * 0.5050462);
//     path_37.cubicTo(
//         size.width * 0.9531548,
//         size.height * 0.5000869,
//         size.width * 0.9503840,
//         size.height * 0.4846370,
//         size.width * 0.9503583,
//         size.height * 0.4844922);
//     path_37.arcToPoint(Offset(size.width * 0.9504614, size.height * 0.4843329),
//         radius: Radius.elliptical(
//             size.width * 0.0003866179, size.height * 0.0002171961),
//         rotation: 0,
//         largeArc: false,
//         clockwise: true);
//     path_37.cubicTo(
//         size.width * 0.9505645,
//         size.height * 0.4843040,
//         size.width * 0.9506676,
//         size.height * 0.4842750,
//         size.width * 0.9507835,
//         size.height * 0.4843040);
//     path_37.cubicTo(
//         size.width * 0.9509897,
//         size.height * 0.4843257,
//         size.width * 0.9551523,
//         size.height * 0.4849338,
//         size.width * 0.9586706,
//         size.height * 0.4877212);
//     path_37.lineTo(size.width * 0.9585675, size.height * 0.4882859);
//     path_37.cubicTo(
//         size.width * 0.9573045,
//         size.height * 0.4959240,
//         size.width * 0.9600237,
//         size.height * 0.4990009,
//         size.width * 0.9624465,
//         size.height * 0.5017376);
//     path_37.cubicTo(
//         size.width * 0.9640574,
//         size.height * 0.5035548,
//         size.width * 0.9656168,
//         size.height * 0.5052923,
//         size.width * 0.9655137,
//         size.height * 0.5081159);
//     path_37.cubicTo(
//         size.width * 0.9654106,
//         size.height * 0.5108960,
//         size.width * 0.9657714,
//         size.height * 0.5128653,
//         size.width * 0.9660936,
//         size.height * 0.5145956);
//     path_37.cubicTo(
//         size.width * 0.9665704,
//         size.height * 0.5172309,
//         size.width * 0.9670215,
//         size.height * 0.5194970,
//         size.width * 0.9657714,
//         size.height * 0.5237106);
//     path_37.cubicTo(
//         size.width * 0.9651915,
//         size.height * 0.5257233,
//         size.width * 0.9657972,
//         size.height * 0.5272509,
//         size.width * 0.9675370,
//         size.height * 0.5282572);
//     path_37.cubicTo(
//         size.width * 0.9701273,
//         size.height * 0.5297848,
//         size.width * 0.9746379,
//         size.height * 0.5297197,
//         size.width * 0.9758493,
//         size.height * 0.5296618);
//     path_37.lineTo(size.width * 0.9765065, size.height * 0.5296328);
//     path_37.lineTo(size.width * 0.9765065, size.height * 0.5297848);
//     path_37.lineTo(size.width * 0.9765323, size.height * 0.5298138);
//     path_37.lineTo(size.width * 0.9765323, size.height * 0.5298572);
//     path_37.cubicTo(
//         size.width * 0.9768287,
//         size.height * 0.5315876,
//         size.width * 0.9778468,
//         size.height * 0.5329921,
//         size.width * 0.9795737,
//         size.height * 0.5340419);
//     path_37.cubicTo(
//         size.width * 0.9829759,
//         size.height * 0.5361270,
//         size.width * 0.9881308,
//         size.height * 0.5361270,
//         size.width * 0.9892649,
//         size.height * 0.5360980);
//     path_37.cubicTo(
//         size.width * 0.9899995,
//         size.height * 0.5346935,
//         size.width * 0.9965204,
//         size.height * 0.5218644,
//         size.width * 0.9968168,
//         size.height * 0.5192870);
//     path_37.lineTo(size.width * 0.9968426, size.height * 0.5191060);
//     path_37.cubicTo(
//         size.width * 0.9971648,
//         size.height * 0.5162970,
//         size.width * 0.9976932,
//         size.height * 0.5115766,
//         size.width * 0.9947807,
//         size.height * 0.4980308);
//     path_37.close();

//     Paint paint37Fill = Paint()..style = PaintingStyle.fill;
//     paint37Fill.color = randomColor().withOpacity(1.0);
//     canvas.drawPath(path_37, paint37Fill);

//     Path path_38 = Path();
//     path_38.moveTo(size.width * 0.5002577, size.height * 0.4194782);
//     path_38.lineTo(size.width * 0.5002577, size.height * 0.4754206);
//     path_38.moveTo(size.width * 0.4999098, size.height * 0.4194782);
//     path_38.lineTo(size.width * 0.4999098, size.height * 0.4754206);
//     path_38.moveTo(size.width * 0.4997294, size.height * 0.4194782);
//     path_38.lineTo(size.width * 0.4997294, size.height * 0.4754206);
//     path_38.moveTo(size.width * 0.04386824, size.height * 0.4339145);
//     path_38.lineTo(size.width * 0.04386824, size.height * 0.4339289);
//     path_38.cubicTo(
//         size.width * 0.04558225,
//         size.height * 0.4403000,
//         size.width * 0.05152327,
//         size.height * 0.4454910,
//         size.width * 0.05944894,
//         size.height * 0.4477064);
//     path_38.cubicTo(
//         size.width * 0.06662715,
//         size.height * 0.4497046,
//         size.width * 0.07604773,
//         size.height * 0.4494367,
//         size.width * 0.08522347,
//         size.height * 0.4472286);
//     path_38.moveTo(size.width * 0.2206557, size.height * 0.2566462);
//     path_38.cubicTo(
//         size.width * 0.2248312,
//         size.height * 0.2550679,
//         size.width * 0.2297541,
//         size.height * 0.2534679,
//         size.width * 0.2354245,
//         size.height * 0.2520344);
//     path_38.cubicTo(
//         size.width * 0.2526161,
//         size.height * 0.2477267,
//         size.width * 0.2671658,
//         size.height * 0.2474226,
//         size.width * 0.2701299,
//         size.height * 0.2473792);
//     path_38.cubicTo(
//         size.width * 0.2829012,
//         size.height * 0.2471692,
//         size.width * 0.2950668,
//         size.height * 0.2469882,
//         size.width * 0.3041394,
//         size.height * 0.2511367);
//     path_38.cubicTo(
//         size.width * 0.3201840,
//         size.height * 0.2584634,
//         size.width * 0.3156091,
//         size.height * 0.2743477,
//         size.width * 0.3138564,
//         size.height * 0.2804292);
//     path_38.cubicTo(
//         size.width * 0.3129285,
//         size.height * 0.2836075,
//         size.width * 0.3115367,
//         size.height * 0.2865758,
//         size.width * 0.3098356,
//         size.height * 0.2893487);
//     path_38.moveTo(size.width * 0.2511470, size.height * 0.3302323);
//     path_38.cubicTo(
//         size.width * 0.2232589,
//         size.height * 0.3493238,
//         size.width * 0.1992500,
//         size.height * 0.3492297,
//         size.width * 0.1877545,
//         size.height * 0.3460514);
//     path_38.cubicTo(
//         size.width * 0.1684881,
//         size.height * 0.3407228,
//         size.width * 0.1576628,
//         size.height * 0.3232747,
//         size.width * 0.1935151,
//         size.height * 0.2787930);
//     path_38.cubicTo(
//         size.width * 0.1935151,
//         size.height * 0.2787785,
//         size.width * 0.1935151,
//         size.height * 0.2787495,
//         size.width * 0.1935409,
//         size.height * 0.2787350);
//     path_38.moveTo(size.width * 0.2482216, size.height * 0.2494136);
//     path_38.lineTo(size.width * 0.2482731, size.height * 0.2494136);

//     Paint paint38Fill = Paint()..style = PaintingStyle.fill;
//     paint38Fill.color = randomColor().withOpacity(1.0);
//     canvas.drawPath(path_38, paint38Fill);

//     Path path_39 = Path();
//     path_39.moveTo(size.width * 0.2637120, size.height * 0.2476470);
//     path_39.lineTo(size.width * 0.2637636, size.height * 0.2476470);
//     path_39.cubicTo(
//         size.width * 0.2753106,
//         size.height * 0.2460687,
//         size.width * 0.2843832,
//         size.height * 0.2441574,
//         size.width * 0.2900278,
//         size.height * 0.2420072);
//     path_39.cubicTo(
//         size.width * 0.3097711,
//         size.height * 0.2345067,
//         size.width * 0.3254163,
//         size.height * 0.2241971,
//         size.width * 0.3326331,
//         size.height * 0.2194550);
//     path_39.cubicTo(
//         size.width * 0.3550698,
//         size.height * 0.2046712,
//         size.width * 0.3584463,
//         size.height * 0.1980250,
//         size.width * 0.3820816,
//         size.height * 0.1896122);
//     path_39.cubicTo(
//         size.width * 0.3950719,
//         size.height * 0.1849860,
//         size.width * 0.4113356,
//         size.height * 0.1821696,
//         size.width * 0.4113356,
//         size.height * 0.1821696);
//     path_39.cubicTo(
//         size.width * 0.4113356,
//         size.height * 0.1821696,
//         size.width * 0.3722743,
//         size.height * 0.1731777,
//         size.width * 0.3353523,
//         size.height * 0.1773334);
//     path_39.lineTo(size.width * 0.3353266, size.height * 0.1773334);

//     Paint paint39Fill = Paint()..style = PaintingStyle.fill;
//     paint39Fill.color = randomColor().withOpacity(1.0);
//     canvas.drawPath(path_39, paint39Fill);

//     Path path_40 = Path();
//     path_40.moveTo(size.width * 0.4104851, size.height * 0.1823144);
//     path_40.cubicTo(
//         size.width * 0.4171736,
//         size.height * 0.1812647,
//         size.width * 0.4308083,
//         size.height * 0.1784049,
//         size.width * 0.4570854,
//         size.height * 0.1798022);
//     path_40.cubicTo(
//         size.width * 0.5001933,
//         size.height * 0.1820972,
//         size.width * 0.4997423,
//         size.height * 0.1980105,
//         size.width * 0.4997423,
//         size.height * 0.1980105);
//     path_40.lineTo(size.width * 0.4997423, size.height * 0.2393646);
//     path_40.cubicTo(
//         size.width * 0.4997423,
//         size.height * 0.2478136,
//         size.width * 0.4946002,
//         size.height * 0.2560525,
//         size.width * 0.4848317,
//         size.height * 0.2624815);
//     path_40.cubicTo(
//         size.width * 0.4764936,
//         size.height * 0.2679694,
//         size.width * 0.4642507,
//         size.height * 0.2740436,
//         size.width * 0.4470591,
//         size.height * 0.2782500);
//     path_40.cubicTo(
//         size.width * 0.4047502,
//         size.height * 0.2886102,
//         size.width * 0.3552116,
//         size.height * 0.2812835,
//         size.width * 0.3258415,
//         size.height * 0.2613232);
//     path_40.cubicTo(
//         size.width * 0.3148100,
//         size.height * 0.2538299,
//         size.width * 0.3026702,
//         size.height * 0.2472923,
//         size.width * 0.2809037,
//         size.height * 0.2472923);

//     Paint paint40Fill = Paint()..style = PaintingStyle.fill;
//     paint40Fill.color = randomColor().withOpacity(1.0);
//     canvas.drawPath(path_40, paint40Fill);

//     Path path_41 = Path();
//     path_41.moveTo(size.width * 0.4384247, size.height * 0.1353349);
//     path_41.lineTo(size.width * 0.4384247, size.height * 0.1661188);
//     path_41.cubicTo(
//         size.width * 0.4384247,
//         size.height * 0.1758203,
//         size.width * 0.4277669,
//         size.height * 0.1791072,
//         size.width * 0.4113485,
//         size.height * 0.1821769);
//     path_41.cubicTo(
//         size.width * 0.4105237,
//         size.height * 0.1823289,
//         size.width * 0.4096861,
//         size.height * 0.1824737,
//         size.width * 0.4088226,
//         size.height * 0.1826113);
//     path_41.moveTo(size.width * 0.4997294, size.height * 0.2829414);
//     path_41.cubicTo(
//         size.width * 0.4997294,
//         size.height * 0.2691567,
//         size.width * 0.4619955,
//         size.height * 0.2751513,
//         size.width * 0.4470591,
//         size.height * 0.2782572);
//     path_41.cubicTo(
//         size.width * 0.4308212,
//         size.height * 0.2816310,
//         size.width * 0.4177664,
//         size.height * 0.2854319,
//         size.width * 0.4134620,
//         size.height * 0.2908618);
//     path_41.cubicTo(
//         size.width * 0.4082942,
//         size.height * 0.2973850,
//         size.width * 0.4190551,
//         size.height * 0.3014248,
//         size.width * 0.4203181,
//         size.height * 0.3185688);
//     path_41.cubicTo(
//         size.width * 0.4206531,
//         size.height * 0.3230358,
//         size.width * 0.4198928,
//         size.height * 0.3224639,
//         size.width * 0.4200345,
//         size.height * 0.3313834);
//     path_41.cubicTo(
//         size.width * 0.4201763,
//         size.height * 0.3406866,
//         size.width * 0.4235012,
//         size.height * 0.3816209,
//         size.width * 0.4266070,
//         size.height * 0.4089079);
//     path_41.cubicTo(
//         size.width * 0.4314913,
//         size.height * 0.4518621,
//         size.width * 0.4789551,
//         size.height * 0.4873447,
//         size.width * 0.4997294,
//         size.height * 0.4873447);

//     Paint paint41Fill = Paint()..style = PaintingStyle.fill;
//     paint41Fill.color = randomColor().withOpacity(1.0);
//     canvas.drawPath(path_41, paint41Fill);

//     Path path_42 = Path();
//     path_42.moveTo(size.width * 0.4336306, size.height * 0.3135154);
//     path_42.cubicTo(
//         size.width * 0.4549590,
//         size.height * 0.3100330,
//         size.width * 0.4694443,
//         size.height * 0.3079479,
//         size.width * 0.4905665,
//         size.height * 0.3081796);
//     path_42.cubicTo(
//         size.width * 0.4997294,
//         size.height * 0.3081651,
//         size.width * 0.4997294,
//         size.height * 0.3006357,
//         size.width * 0.4997294,
//         size.height * 0.2925125);
//     path_42.moveTo(size.width * 0.4377674, size.height * 0.3519374);
//     path_42.cubicTo(
//         size.width * 0.4614800,
//         size.height * 0.3521546,
//         size.width * 0.4834656,
//         size.height * 0.3524731,
//         size.width * 0.4949353,
//         size.height * 0.3488315);
//     path_42.cubicTo(
//         size.width * 0.5020104,
//         size.height * 0.3465799,
//         size.width * 0.4997423,
//         size.height * 0.3401509,
//         size.width * 0.4997423,
//         size.height * 0.3325418);
//     path_42.moveTo(size.width * 0.4400356, size.height * 0.3916553);
//     path_42.cubicTo(
//         size.width * 0.4619697,
//         size.height * 0.3920970,
//         size.width * 0.4664802,
//         size.height * 0.3929730,
//         size.width * 0.4870483,
//         size.height * 0.3926399);
//     path_42.cubicTo(
//         size.width * 0.4980154,
//         size.height * 0.3921838,
//         size.width * 0.4997423,
//         size.height * 0.3895630,
//         size.width * 0.4997423,
//         size.height * 0.3766109);
//     path_42.moveTo(size.width * 0.4520078, size.height * 0.3152095);
//     path_42.cubicTo(
//         size.width * 0.4594051,
//         size.height * 0.3141308,
//         size.width * 0.4743543,
//         size.height * 0.3116765,
//         size.width * 0.4864168,
//         size.height * 0.3128276);
//     path_42.cubicTo(
//         size.width * 0.4984793,
//         size.height * 0.3139787,
//         size.width * 0.4997423,
//         size.height * 0.3182792,
//         size.width * 0.4997423,
//         size.height * 0.3232747);
//     path_42.moveTo(size.width * 0.4520078, size.height * 0.3562089);
//     path_42.cubicTo(
//         size.width * 0.4617377,
//         size.height * 0.3555790,
//         size.width * 0.4747667,
//         size.height * 0.3547682,
//         size.width * 0.4866617,
//         size.height * 0.3548551);
//     path_42.cubicTo(
//         size.width * 0.4985566,
//         size.height * 0.3549419,
//         size.width * 0.4997423,
//         size.height * 0.3593583,
//         size.width * 0.4997423,
//         size.height * 0.3663882);
//     path_42.moveTo(size.width * 0.5000902, size.height * 0.4194782);
//     path_42.lineTo(size.width * 0.5000902, size.height * 0.4754206);
//     path_42.moveTo(size.width * 0.4520078, size.height * 0.3968608);
//     path_42.cubicTo(
//         size.width * 0.4609258,
//         size.height * 0.3967594,
//         size.width * 0.4840585,
//         size.height * 0.3980119,
//         size.width * 0.4922676,
//         size.height * 0.3990545);
//     path_42.cubicTo(
//         size.width * 0.5004768,
//         size.height * 0.4000970,
//         size.width * 0.5000773,
//         size.height * 0.4057514,
//         size.width * 0.5000773,
//         size.height * 0.4106600);
//     path_42.moveTo(size.width * 0.3306098, size.height * 0.2643277);
//     path_42.cubicTo(
//         size.width * 0.3661916,
//         size.height * 0.2866989,
//         size.width * 0.4173669,
//         size.height * 0.3046248,
//         size.width * 0.4198412,
//         size.height * 0.3146521);
//     path_42.cubicTo(
//         size.width * 0.4231146,
//         size.height * 0.3279083,
//         size.width * 0.4041961,
//         size.height * 0.3553112,
//         size.width * 0.4103175,
//         size.height * 0.3786960);
//     path_42.cubicTo(
//         size.width * 0.4164390,
//         size.height * 0.4020807,
//         size.width * 0.4057168,
//         size.height * 0.4172627,
//         size.width * 0.3919016,
//         size.height * 0.4246909);
//     path_42.cubicTo(
//         size.width * 0.3813599,
//         size.height * 0.4303597,
//         size.width * 0.3630857,
//         size.height * 0.4328792,
//         size.width * 0.3475179,
//         size.height * 0.4308665);

//     Paint paint42Fill = Paint()..style = PaintingStyle.fill;
//     paint42Fill.color = randomColor().withOpacity(1.0);
//     canvas.drawPath(path_42, paint42Fill);

//     Path path_43 = Path();
//     path_43.moveTo(size.width * 0.3475050, size.height * 0.4308665);
//     path_43.cubicTo(
//         size.width * 0.3765916,
//         size.height * 0.4342547,
//         size.width * 0.4269808,
//         size.height * 0.4475833,
//         size.width * 0.4466081,
//         size.height * 0.4848035);
//     path_43.cubicTo(
//         size.width * 0.4662483,
//         size.height * 0.5220309,
//         size.width * 0.4763776,
//         size.height * 0.5358012,
//         size.width * 0.4997294,
//         size.height * 0.5358012);

//     Paint paint43Fill = Paint()..style = PaintingStyle.fill;
//     paint43Fill.color = randomColor().withOpacity(1.0);
//     canvas.drawPath(path_43, paint43Fill);

//     Path path_44 = Path();
//     path_44.moveTo(size.width * 0.4474586, size.height * 0.6597043);
//     path_44.cubicTo(
//         size.width * 0.4484123,
//         size.height * 0.6571124,
//         size.width * 0.4492628,
//         size.height * 0.6546509,
//         size.width * 0.4500103,
//         size.height * 0.6523341);
//     path_44.cubicTo(
//         size.width * 0.4666993,
//         size.height * 0.6000261,
//         size.width * 0.4333084,
//         size.height * 0.6388318,
//         size.width * 0.4080365,
//         size.height * 0.5622629);
//     path_44.cubicTo(
//         size.width * 0.3947626,
//         size.height * 0.5220382,
//         size.width * 0.3960256,
//         size.height * 0.4486766,
//         size.width * 0.3469766,
//         size.height * 0.4332556);
//     path_44.moveTo(size.width * 0.3123099, size.height * 0.6513061);
//     path_44.cubicTo(
//         size.width * 0.3211635,
//         size.height * 0.6737207,
//         size.width * 0.3237925,
//         size.height * 0.6984304,
//         size.width * 0.3561524,
//         size.height * 0.6895398);
//     path_44.cubicTo(
//         size.width * 0.3759988,
//         size.height * 0.6840665,
//         size.width * 0.3604310,
//         size.height * 0.7151979,
//         size.width * 0.3967473,
//         size.height * 0.7155455);
//     path_44.cubicTo(
//         size.width * 0.4330764,
//         size.height * 0.7158857,
//         size.width * 0.4440177,
//         size.height * 0.6718963,
//         size.width * 0.4440177,
//         size.height * 0.6718963);
//     path_44.moveTo(size.width * 0.4139260, size.height * 0.7325953);
//     path_44.cubicTo(
//         size.width * 0.4136811,
//         size.height * 0.7328343,
//         size.width * 0.4134491,
//         size.height * 0.7330587,
//         size.width * 0.4132301,
//         size.height * 0.7332831);
//     path_44.cubicTo(
//         size.width * 0.3903165,
//         size.height * 0.7549666,
//         size.width * 0.3550827,
//         size.height * 0.7569213,
//         size.width * 0.3396438,
//         size.height * 0.7412325);
//     path_44.cubicTo(
//         size.width * 0.3322981,
//         size.height * 0.7337899,
//         size.width * 0.3276715,
//         size.height * 0.7306406,
//         size.width * 0.3168591,
//         size.height * 0.7292288);
//     path_44.moveTo(size.width * 0.4997294, size.height * 0.4194782);
//     path_44.lineTo(size.width * 0.4997294, size.height * 0.4754206);
//     path_44.moveTo(size.width * 0.5000902, size.height * 0.4194782);
//     path_44.lineTo(size.width * 0.5000902, size.height * 0.4754206);
//     path_44.moveTo(size.width * 0.5002577, size.height * 0.4194782);
//     path_44.lineTo(size.width * 0.5002577, size.height * 0.4754206);
//     path_44.moveTo(size.width * 0.9561318, size.height * 0.4339145);
//     path_44.lineTo(size.width * 0.9561318, size.height * 0.4339289);
//     path_44.cubicTo(
//         size.width * 0.9544178,
//         size.height * 0.4403000,
//         size.width * 0.9484767,
//         size.height * 0.4454910,
//         size.width * 0.9405511,
//         size.height * 0.4477064);
//     path_44.cubicTo(
//         size.width * 0.9333729,
//         size.height * 0.4497046,
//         size.width * 0.9239523,
//         size.height * 0.4494367,
//         size.width * 0.9147765,
//         size.height * 0.4472286);
//     path_44.moveTo(size.width * 0.7793443, size.height * 0.2566462);
//     path_44.arcToPoint(Offset(size.width * 0.7645755, size.height * 0.2520344),
//         radius: Radius.elliptical(
//             size.width * 0.09991752, size.height * 0.05613217),
//         rotation: 0,
//         largeArc: false,
//         clockwise: false);
//     path_44.cubicTo(
//         size.width * 0.7473839,
//         size.height * 0.2477267,
//         size.width * 0.7328342,
//         size.height * 0.2474226,
//         size.width * 0.7298701,
//         size.height * 0.2473792);
//     path_44.cubicTo(
//         size.width * 0.7170988,
//         size.height * 0.2471692,
//         size.width * 0.7049332,
//         size.height * 0.2469882,
//         size.width * 0.6958606,
//         size.height * 0.2511367);
//     path_44.cubicTo(
//         size.width * 0.6798160,
//         size.height * 0.2584634,
//         size.width * 0.6843909,
//         size.height * 0.2743477,
//         size.width * 0.6861436,
//         size.height * 0.2804292);
//     path_44.cubicTo(
//         size.width * 0.6870715,
//         size.height * 0.2836075,
//         size.width * 0.6884633,
//         size.height * 0.2865758,
//         size.width * 0.6901644,
//         size.height * 0.2893487);
//     path_44.moveTo(size.width * 0.7488401, size.height * 0.3302323);
//     path_44.cubicTo(
//         size.width * 0.7767282,
//         size.height * 0.3493238,
//         size.width * 0.8007372,
//         size.height * 0.3492297,
//         size.width * 0.8122326,
//         size.height * 0.3460514);
//     path_44.cubicTo(
//         size.width * 0.8314990,
//         size.height * 0.3407228,
//         size.width * 0.8423243,
//         size.height * 0.3232747,
//         size.width * 0.8064720,
//         size.height * 0.2787930);
//     path_44.cubicTo(
//         size.width * 0.8064720,
//         size.height * 0.2787785,
//         size.width * 0.8064720,
//         size.height * 0.2787495,
//         size.width * 0.8064462,
//         size.height * 0.2787350);
//     path_44.moveTo(size.width * 0.7517784, size.height * 0.2494136);
//     path_44.lineTo(size.width * 0.7517269, size.height * 0.2494136);

//     Paint paint44Fill = Paint()..style = PaintingStyle.fill;
//     paint44Fill.color = randomColor().withOpacity(1.0);
//     canvas.drawPath(path_44, paint44Fill);

//     Path path_45 = Path();
//     path_45.moveTo(size.width * 0.7362880, size.height * 0.2476470);
//     path_45.lineTo(size.width * 0.7362364, size.height * 0.2476470);
//     path_45.cubicTo(
//         size.width * 0.7246894,
//         size.height * 0.2460687,
//         size.width * 0.7156168,
//         size.height * 0.2441574,
//         size.width * 0.7099722,
//         size.height * 0.2420072);
//     path_45.cubicTo(
//         size.width * 0.6902289,
//         size.height * 0.2345067,
//         size.width * 0.6745837,
//         size.height * 0.2241971,
//         size.width * 0.6673669,
//         size.height * 0.2194550);
//     path_45.cubicTo(
//         size.width * 0.6449302,
//         size.height * 0.2046712,
//         size.width * 0.6415537,
//         size.height * 0.1980250,
//         size.width * 0.6179184,
//         size.height * 0.1896122);
//     path_45.cubicTo(
//         size.width * 0.6049281,
//         size.height * 0.1849860,
//         size.width * 0.5886644,
//         size.height * 0.1821696,
//         size.width * 0.5886644,
//         size.height * 0.1821696);
//     path_45.cubicTo(
//         size.width * 0.5886644,
//         size.height * 0.1821696,
//         size.width * 0.6277257,
//         size.height * 0.1731777,
//         size.width * 0.6646477,
//         size.height * 0.1773334);
//     path_45.lineTo(size.width * 0.6646734, size.height * 0.1773334);

//     Paint paint45Fill = Paint()..style = PaintingStyle.fill;
//     paint45Fill.color = randomColor().withOpacity(1.0);
//     canvas.drawPath(path_45, paint45Fill);

//     Path path_46 = Path();
//     path_46.moveTo(size.width * 0.5895149, size.height * 0.1823144);
//     path_46.cubicTo(
//         size.width * 0.5828264,
//         size.height * 0.1812647,
//         size.width * 0.5691917,
//         size.height * 0.1784049,
//         size.width * 0.5429146,
//         size.height * 0.1798022);
//     path_46.cubicTo(
//         size.width * 0.4998067,
//         size.height * 0.1820972,
//         size.width * 0.5002577,
//         size.height * 0.1980105,
//         size.width * 0.5002577,
//         size.height * 0.1980105);
//     path_46.lineTo(size.width * 0.5002577, size.height * 0.2393646);
//     path_46.cubicTo(
//         size.width * 0.5002577,
//         size.height * 0.2478136,
//         size.width * 0.5053998,
//         size.height * 0.2560525,
//         size.width * 0.5151683,
//         size.height * 0.2624815);
//     path_46.cubicTo(
//         size.width * 0.5235064,
//         size.height * 0.2679694,
//         size.width * 0.5357493,
//         size.height * 0.2740436,
//         size.width * 0.5529409,
//         size.height * 0.2782500);
//     path_46.cubicTo(
//         size.width * 0.5952498,
//         size.height * 0.2886102,
//         size.width * 0.6447884,
//         size.height * 0.2812835,
//         size.width * 0.6741585,
//         size.height * 0.2613232);
//     path_46.cubicTo(
//         size.width * 0.6851900,
//         size.height * 0.2538299,
//         size.width * 0.6973298,
//         size.height * 0.2472923,
//         size.width * 0.7190963,
//         size.height * 0.2472923);

//     Paint paint46Fill = Paint()..style = PaintingStyle.fill;
//     paint46Fill.color = randomColor().withOpacity(1.0);
//     canvas.drawPath(path_46, paint46Fill);

//     Path path_47 = Path();
//     path_47.moveTo(size.width * 0.5615753, size.height * 0.1353349);
//     path_47.lineTo(size.width * 0.5615753, size.height * 0.1661188);
//     path_47.cubicTo(
//         size.width * 0.5615753,
//         size.height * 0.1758203,
//         size.width * 0.5722331,
//         size.height * 0.1791072,
//         size.width * 0.5886515,
//         size.height * 0.1821769);
//     path_47.cubicTo(
//         size.width * 0.5894763,
//         size.height * 0.1823289,
//         size.width * 0.5903139,
//         size.height * 0.1824737,
//         size.width * 0.5911774,
//         size.height * 0.1826113);
//     path_47.moveTo(size.width * 0.5002577, size.height * 0.2829414);
//     path_47.cubicTo(
//         size.width * 0.5002577,
//         size.height * 0.2691567,
//         size.width * 0.5379916,
//         size.height * 0.2751513,
//         size.width * 0.5529280,
//         size.height * 0.2782572);
//     path_47.cubicTo(
//         size.width * 0.5691659,
//         size.height * 0.2816310,
//         size.width * 0.5822207,
//         size.height * 0.2854319,
//         size.width * 0.5865251,
//         size.height * 0.2908618);
//     path_47.cubicTo(
//         size.width * 0.5916929,
//         size.height * 0.2973850,
//         size.width * 0.5809320,
//         size.height * 0.3014248,
//         size.width * 0.5796691,
//         size.height * 0.3185688);
//     path_47.cubicTo(
//         size.width * 0.5793340,
//         size.height * 0.3230358,
//         size.width * 0.5800943,
//         size.height * 0.3224639,
//         size.width * 0.5799526,
//         size.height * 0.3313834);
//     path_47.cubicTo(
//         size.width * 0.5798108,
//         size.height * 0.3406866,
//         size.width * 0.5764859,
//         size.height * 0.3816209,
//         size.width * 0.5733801,
//         size.height * 0.4089079);
//     path_47.cubicTo(
//         size.width * 0.5684958,
//         size.height * 0.4518621,
//         size.width * 0.5210320,
//         size.height * 0.4873447,
//         size.width * 0.5002577,
//         size.height * 0.4873447);

//     Paint paint47Fill = Paint()..style = PaintingStyle.fill;
//     paint47Fill.color = randomColor().withOpacity(1.0);
//     canvas.drawPath(path_47, paint47Fill);

//     Path path_48 = Path();
//     path_48.moveTo(size.width * 0.5663694, size.height * 0.3135154);
//     path_48.cubicTo(
//         size.width * 0.5450410,
//         size.height * 0.3100330,
//         size.width * 0.5305557,
//         size.height * 0.3079479,
//         size.width * 0.5094335,
//         size.height * 0.3081796);
//     path_48.cubicTo(
//         size.width * 0.5002706,
//         size.height * 0.3081651,
//         size.width * 0.5002706,
//         size.height * 0.3006357,
//         size.width * 0.5002706,
//         size.height * 0.2925125);
//     path_48.moveTo(size.width * 0.5622326, size.height * 0.3519374);
//     path_48.cubicTo(
//         size.width * 0.5385200,
//         size.height * 0.3521546,
//         size.width * 0.5165344,
//         size.height * 0.3524731,
//         size.width * 0.5050647,
//         size.height * 0.3488315);
//     path_48.cubicTo(
//         size.width * 0.4979896,
//         size.height * 0.3465799,
//         size.width * 0.5002577,
//         size.height * 0.3401509,
//         size.width * 0.5002577,
//         size.height * 0.3325418);
//     path_48.moveTo(size.width * 0.5599644, size.height * 0.3916553);
//     path_48.cubicTo(
//         size.width * 0.5380303,
//         size.height * 0.3920970,
//         size.width * 0.5335198,
//         size.height * 0.3929730,
//         size.width * 0.5129517,
//         size.height * 0.3926399);
//     path_48.cubicTo(
//         size.width * 0.5019846,
//         size.height * 0.3921838,
//         size.width * 0.5002577,
//         size.height * 0.3895630,
//         size.width * 0.5002577,
//         size.height * 0.3766109);
//     path_48.moveTo(size.width * 0.5479922, size.height * 0.3152095);
//     path_48.cubicTo(
//         size.width * 0.5405949,
//         size.height * 0.3141308,
//         size.width * 0.5256457,
//         size.height * 0.3116765,
//         size.width * 0.5135832,
//         size.height * 0.3128276);
//     path_48.cubicTo(
//         size.width * 0.5015207,
//         size.height * 0.3139787,
//         size.width * 0.5002577,
//         size.height * 0.3182792,
//         size.width * 0.5002577,
//         size.height * 0.3232747);
//     path_48.moveTo(size.width * 0.5479922, size.height * 0.3562089);
//     path_48.cubicTo(
//         size.width * 0.5382623,
//         size.height * 0.3555790,
//         size.width * 0.5252333,
//         size.height * 0.3547682,
//         size.width * 0.5133383,
//         size.height * 0.3548551);
//     path_48.cubicTo(
//         size.width * 0.5014434,
//         size.height * 0.3549419,
//         size.width * 0.5002577,
//         size.height * 0.3593583,
//         size.width * 0.5002577,
//         size.height * 0.3663882);
//     path_48.moveTo(size.width * 0.4999098, size.height * 0.4194782);
//     path_48.lineTo(size.width * 0.4999098, size.height * 0.4754206);
//     path_48.moveTo(size.width * 0.5479922, size.height * 0.3968608);
//     path_48.cubicTo(
//         size.width * 0.5390742,
//         size.height * 0.3967594,
//         size.width * 0.5159415,
//         size.height * 0.3980119,
//         size.width * 0.5077324,
//         size.height * 0.3990545);
//     path_48.cubicTo(
//         size.width * 0.4995232,
//         size.height * 0.4000970,
//         size.width * 0.4999227,
//         size.height * 0.4057514,
//         size.width * 0.4999227,
//         size.height * 0.4106600);
//     path_48.moveTo(size.width * 0.6693902, size.height * 0.2643277);
//     path_48.cubicTo(
//         size.width * 0.6338084,
//         size.height * 0.2866989,
//         size.width * 0.5826331,
//         size.height * 0.3046248,
//         size.width * 0.5801588,
//         size.height * 0.3146521);
//     path_48.cubicTo(
//         size.width * 0.5768854,
//         size.height * 0.3279083,
//         size.width * 0.5958039,
//         size.height * 0.3553112,
//         size.width * 0.5896825,
//         size.height * 0.3786960);
//     path_48.cubicTo(
//         size.width * 0.5835610,
//         size.height * 0.4020807,
//         size.width * 0.5942832,
//         size.height * 0.4172627,
//         size.width * 0.6080984,
//         size.height * 0.4246909);
//     path_48.cubicTo(
//         size.width * 0.6186401,
//         size.height * 0.4303597,
//         size.width * 0.6369143,
//         size.height * 0.4328792,
//         size.width * 0.6524821,
//         size.height * 0.4308665);

//     Paint paint48Fill = Paint()..style = PaintingStyle.fill;
//     paint48Fill.color = randomColor().withOpacity(1.0);
//     canvas.drawPath(path_48, paint48Fill);

//     Path path_49 = Path();
//     path_49.moveTo(size.width * 0.6524821, size.height * 0.4308665);
//     path_49.cubicTo(
//         size.width * 0.6233955,
//         size.height * 0.4342547,
//         size.width * 0.5730063,
//         size.height * 0.4475833,
//         size.width * 0.5533790,
//         size.height * 0.4848035);
//     path_49.cubicTo(
//         size.width * 0.5337389,
//         size.height * 0.5220309,
//         size.width * 0.5236095,
//         size.height * 0.5358012,
//         size.width * 0.5002577,
//         size.height * 0.5358012);

//     Paint paint49Fill = Paint()..style = PaintingStyle.fill;
//     paint49Fill.color = randomColor().withOpacity(1.0);
//     canvas.drawPath(path_49, paint49Fill);

//     Path path_50 = Path();
//     path_50.moveTo(size.width * 0.5525414, size.height * 0.6597043);
//     path_50.cubicTo(
//         size.width * 0.5515877,
//         size.height * 0.6571124,
//         size.width * 0.5507372,
//         size.height * 0.6546509,
//         size.width * 0.5499897,
//         size.height * 0.6523341);
//     path_50.cubicTo(
//         size.width * 0.5333007,
//         size.height * 0.6000261,
//         size.width * 0.5666916,
//         size.height * 0.6388318,
//         size.width * 0.5919635,
//         size.height * 0.5622629);
//     path_50.cubicTo(
//         size.width * 0.6052374,
//         size.height * 0.5220382,
//         size.width * 0.6039744,
//         size.height * 0.4486766,
//         size.width * 0.6530234,
//         size.height * 0.4332556);
//     path_50.moveTo(size.width * 0.6876901, size.height * 0.6513061);
//     path_50.cubicTo(
//         size.width * 0.6788365,
//         size.height * 0.6737207,
//         size.width * 0.6762075,
//         size.height * 0.6984304,
//         size.width * 0.6438476,
//         size.height * 0.6895398);
//     path_50.cubicTo(
//         size.width * 0.6240012,
//         size.height * 0.6840665,
//         size.width * 0.6395690,
//         size.height * 0.7151979,
//         size.width * 0.6032527,
//         size.height * 0.7155455);
//     path_50.cubicTo(
//         size.width * 0.5669236,
//         size.height * 0.7158857,
//         size.width * 0.5559823,
//         size.height * 0.6718963,
//         size.width * 0.5559823,
//         size.height * 0.6718963);
//     path_50.moveTo(size.width * 0.5860611, size.height * 0.7325953);
//     path_50.cubicTo(
//         size.width * 0.5863060,
//         size.height * 0.7328343,
//         size.width * 0.5865380,
//         size.height * 0.7330587,
//         size.width * 0.5867570,
//         size.height * 0.7332831);
//     path_50.cubicTo(
//         size.width * 0.6096706,
//         size.height * 0.7549666,
//         size.width * 0.6449044,
//         size.height * 0.7569213,
//         size.width * 0.6603433,
//         size.height * 0.7412325);
//     path_50.cubicTo(
//         size.width * 0.6676891,
//         size.height * 0.7337899,
//         size.width * 0.6723156,
//         size.height * 0.7306406,
//         size.width * 0.6831280,
//         size.height * 0.7292288);
//     path_50.moveTo(size.width * 0.4997423, size.height * 0.5358084);
//     path_50.cubicTo(
//         size.width * 0.4965204,
//         size.height * 0.5358084,
//         size.width * 0.4971261,
//         size.height * 0.5427008,
//         size.width * 0.4963658,
//         size.height * 0.5569416);
//     path_50.cubicTo(
//         size.width * 0.4936208,
//         size.height * 0.5818757,
//         size.width * 0.4686453,
//         size.height * 0.6138977,
//         size.width * 0.4618022,
//         size.height * 0.6265674);
//     path_50.cubicTo(
//         size.width * 0.4583226,
//         size.height * 0.6329892,
//         size.width * 0.4539667,
//         size.height * 0.6417205,
//         size.width * 0.4500232,
//         size.height * 0.6523486);
//     path_50.lineTo(size.width * 0.4499459, size.height * 0.6526165);
//     path_50.cubicTo(
//         size.width * 0.4491855,
//         size.height * 0.6546581,
//         size.width * 0.4484381,
//         size.height * 0.6567867,
//         size.width * 0.4477293,
//         size.height * 0.6589803);
//     path_50.cubicTo(
//         size.width * 0.4463890,
//         size.height * 0.6630636,
//         size.width * 0.4451132,
//         size.height * 0.6673713,
//         size.width * 0.4440306,
//         size.height * 0.6718963);
//     path_50.cubicTo(
//         size.width * 0.4439791,
//         size.height * 0.6720555,
//         size.width * 0.4439533,
//         size.height * 0.6722221,
//         size.width * 0.4439017,
//         size.height * 0.6723813);
//     path_50.cubicTo(
//         size.width * 0.4426903,
//         size.height * 0.6773841,
//         size.width * 0.4416851,
//         size.height * 0.6826330,
//         size.width * 0.4409119,
//         size.height * 0.6881281);
//     path_50.cubicTo(
//         size.width * 0.4390690,
//         size.height * 0.7015797,
//         size.width * 0.4339914,
//         size.height * 0.7107961,
//         size.width * 0.4282953,
//         size.height * 0.7178550);

//     Paint paint50Fill = Paint()..style = PaintingStyle.fill;
//     paint50Fill.color = randomColor().withOpacity(1.0);
//     canvas.drawPath(path_50, paint50Fill);

//     Path path_51 = Path();
//     path_51.moveTo(size.width * 0.4282953, size.height * 0.7178839);
//     path_51.cubicTo(
//         size.width * 0.4234625,
//         size.height * 0.7238930,
//         size.width * 0.4181530,
//         size.height * 0.7283455,
//         size.width * 0.4139260,
//         size.height * 0.7325953);
//     path_51.cubicTo(
//         size.width * 0.4136038,
//         size.height * 0.7328922,
//         size.width * 0.4133203,
//         size.height * 0.7332035,
//         size.width * 0.4129981,
//         size.height * 0.7335003);
//     path_51.cubicTo(
//         size.width * 0.4124697,
//         size.height * 0.7340650,
//         size.width * 0.4119671,
//         size.height * 0.7346080,
//         size.width * 0.4114645,
//         size.height * 0.7351727);
//     path_51.cubicTo(
//         size.width * 0.4025723,
//         size.height * 0.7451782,
//         size.width * 0.4005361,
//         size.height * 0.7389592,
//         size.width * 0.4073664,
//         size.height * 0.7731024);
//     path_51.cubicTo(
//         size.width * 0.4196737,
//         size.height * 0.8233544,
//         size.width * 0.4035904,
//         size.height * 0.8156874,
//         size.width * 0.3974432,
//         size.height * 0.8273797);
//     path_51.cubicTo(
//         size.width * 0.3662947,
//         size.height * 0.8831992,
//         size.width * 0.3683953,
//         size.height * 0.8968825,
//         size.width * 0.3706505,
//         size.height * 0.9110292);
//     path_51.cubicTo(
//         size.width * 0.3728929,
//         size.height * 0.9251759,
//         size.width * 0.3657921,
//         size.height * 0.9270438,
//         size.width * 0.3657921,
//         size.height * 0.9270438);
//     path_51.cubicTo(
//         size.width * 0.3657921,
//         size.height * 0.9270438,
//         size.width * 0.3637816,
//         size.height * 0.9332918,
//         size.width * 0.3650833,
//         size.height * 0.9390620);
//     path_51.cubicTo(
//         size.width * 0.3708954,
//         size.height * 0.9578712,
//         size.width * 0.3645033,
//         size.height * 0.9603255,
//         size.width * 0.3545544,
//         size.height * 0.9635110);
//     path_51.cubicTo(
//         size.width * 0.3446054,
//         size.height * 0.9666966,
//         size.width * 0.3374658,
//         size.height * 0.9687672,
//         size.width * 0.3377107,
//         size.height * 0.9726695);
//     path_51.cubicTo(
//         size.width * 0.3395020,
//         size.height * 0.9848325,
//         size.width * 0.3159055,
//         size.height * 0.9885465,
//         size.width * 0.3159055,
//         size.height * 0.9885465);
//     path_51.cubicTo(
//         size.width * 0.2976571,
//         size.height * 1.006422,
//         size.width * 0.2775143,
//         size.height * 0.9949249,
//         size.width * 0.2775143,
//         size.height * 0.9949249);
//     path_51.cubicTo(
//         size.width * 0.2681710,
//         size.height * 0.9995728,
//         size.width * 0.2606964,
//         size.height * 0.9936651,
//         size.width * 0.2606964,
//         size.height * 0.9936651);
//     path_51.cubicTo(
//         size.width * 0.2516882,
//         size.height * 0.9950552,
//         size.width * 0.2493170,
//         size.height * 0.9896687,
//         size.width * 0.2493170,
//         size.height * 0.9896687);
//     path_51.cubicTo(
//         size.width * 0.2426929,
//         size.height * 0.9897990,
//         size.width * 0.2427960,
//         size.height * 0.9859546,
//         size.width * 0.2427960,
//         size.height * 0.9859546);
//     path_51.cubicTo(
//         size.width * 0.2367519,
//         size.height * 0.9858967,
//         size.width * 0.2324991,
//         size.height * 0.9830370,
//         size.width * 0.2373576,
//         size.height * 0.9764559);
//     path_51.cubicTo(
//         size.width * 0.2445616,
//         size.height * 0.9674857,
//         size.width * 0.2586602,
//         size.height * 0.9621138,
//         size.width * 0.2692278,
//         size.height * 0.9573354);
//     path_51.cubicTo(
//         size.width * 0.2797567,
//         size.height * 0.9525426,
//         size.width * 0.2770633,
//         size.height * 0.9522892,
//         size.width * 0.2814836,
//         size.height * 0.9481480);
//     path_51.cubicTo(
//         size.width * 0.2858653,
//         size.height * 0.9440213,
//         size.width * 0.3028120,
//         size.height * 0.9296791,
//         size.width * 0.3053250,
//         size.height * 0.9250022);
//     path_51.cubicTo(
//         size.width * 0.3055828,
//         size.height * 0.9203542,
//         size.width * 0.3066137,
//         size.height * 0.9167125,
//         size.width * 0.3093072,
//         size.height * 0.9077785);
//     path_51.cubicTo(
//         size.width * 0.3140626,
//         size.height * 0.8933350,
//         size.width * 0.3054797,
//         size.height * 0.8673945,
//         size.width * 0.3016521,
//         size.height * 0.8438505);
//     path_51.cubicTo(
//         size.width * 0.2798727,
//         size.height * 0.7742680,
//         size.width * 0.3140368,
//         size.height * 0.7360632,
//         size.width * 0.3168849,
//         size.height * 0.7292288);
//     path_51.cubicTo(
//         size.width * 0.3169107,
//         size.height * 0.7291854,
//         size.width * 0.3169107,
//         size.height * 0.7291275,
//         size.width * 0.3169364,
//         size.height * 0.7290840);
//     path_51.cubicTo(
//         size.width * 0.3193077,
//         size.height * 0.7226622,
//         size.width * 0.3178901,
//         size.height * 0.7186514,
//         size.width * 0.3197845,
//         size.height * 0.7127653);
//     path_51.cubicTo(
//         size.width * 0.3217176,
//         size.height * 0.7068938,
//         size.width * 0.3250425,
//         size.height * 0.7071544,
//         size.width * 0.3255194,
//         size.height * 0.6846819);
//     path_51.cubicTo(
//         size.width * 0.3197845,
//         size.height * 0.6736700,
//         size.width * 0.3154802,
//         size.height * 0.6625134,
//         size.width * 0.3123486,
//         size.height * 0.6513857);
//     path_51.cubicTo(
//         size.width * 0.3123228,
//         size.height * 0.6513712,
//         size.width * 0.3123228,
//         size.height * 0.6513568,
//         size.width * 0.3123228,
//         size.height * 0.6513278);
//     path_51.cubicTo(
//         size.width * 0.2887391,
//         size.height * 0.5678376,
//         size.width * 0.3307774,
//         size.height * 0.4858099,
//         size.width * 0.3348240,
//         size.height * 0.4768759);
//     path_51.cubicTo(
//         size.width * 0.3377751,
//         size.height * 0.4703382,
//         size.width * 0.3429300,
//         size.height * 0.4512467,
//         size.width * 0.3469895,
//         size.height * 0.4332846);
//     path_51.cubicTo(
//         size.width * 0.3471700,
//         size.height * 0.4324882,
//         size.width * 0.3473633,
//         size.height * 0.4316846,
//         size.width * 0.3475179,
//         size.height * 0.4308882);
//     path_51.cubicTo(
//         size.width * 0.3495283,
//         size.height * 0.4218745,
//         size.width * 0.3512423,
//         size.height * 0.4133098,
//         size.width * 0.3522218,
//         size.height * 0.4069459);
//     path_51.cubicTo(
//         size.width * 0.3552116,
//         size.height * 0.3874417,
//         size.width * 0.3666426,
//         size.height * 0.3660117,
//         size.width * 0.3485489,
//         size.height * 0.3458776);
//     path_51.cubicTo(
//         size.width * 0.3183412,
//         size.height * 0.3132620,
//         size.width * 0.3110598,
//         size.height * 0.2933162,
//         size.width * 0.3098484,
//         size.height * 0.2893777);
//     path_51.cubicTo(
//         size.width * 0.3096938,
//         size.height * 0.2888926,
//         size.width * 0.3096422,
//         size.height * 0.2886537,
//         size.width * 0.3096422,
//         size.height * 0.2886537);
//     path_51.cubicTo(
//         size.width * 0.3025671,
//         size.height * 0.2984058,
//         size.width * 0.2897314,
//         size.height * 0.3040456,
//         size.width * 0.2833136,
//         size.height * 0.3073905);
//     path_51.cubicTo(
//         size.width * 0.2800660,
//         size.height * 0.3090774,
//         size.width * 0.2659158,
//         size.height * 0.3193145,
//         size.width * 0.2511856,
//         size.height * 0.3302685);
//     path_51.cubicTo(
//         size.width * 0.2368808,
//         size.height * 0.3409111,
//         size.width * 0.2220089,
//         size.height * 0.3522270,
//         size.width * 0.2160163,
//         size.height * 0.3570343);
//     path_51.cubicTo(
//         size.width * 0.1972395,
//         size.height * 0.3739756,
//         size.width * 0.2015954,
//         size.height * 0.3776896,
//         size.width * 0.1702407,
//         size.height * 0.3996409);
//     path_51.cubicTo(
//         size.width * 0.1388731,
//         size.height * 0.4215850,
//         size.width * 0.1239626,
//         size.height * 0.4217659,
//         size.width * 0.09544306,
//         size.height * 0.4384828);
//     path_51.cubicTo(
//         size.width * 0.09370328,
//         size.height * 0.4397426,
//         size.width * 0.08871591,
//         size.height * 0.4436159,
//         size.width * 0.08527501,
//         size.height * 0.4472575);
//     path_51.lineTo(size.width * 0.08524924, size.height * 0.4472575);
//     path_51.cubicTo(
//         size.width * 0.08260735,
//         size.height * 0.4500666,
//         size.width * 0.08086757,
//         size.height * 0.4527309,
//         size.width * 0.08232383,
//         size.height * 0.4539472);
//     path_51.cubicTo(
//         size.width * 0.09050724,
//         size.height * 0.4602676,
//         size.width * 0.08594515,
//         size.height * 0.4672323,
//         size.width * 0.08187278,
//         size.height * 0.4700342);
//     path_51.cubicTo(
//         size.width * 0.07780040,
//         size.height * 0.4728143,
//         size.width * 0.07580288,
//         size.height * 0.4767093,
//         size.width * 0.07416619,
//         size.height * 0.4838696);
//     path_51.cubicTo(
//         size.width * 0.07225888,
//         size.height * 0.4959312,
//         size.width * 0.07532605,
//         size.height * 0.5060525,
//         size.width * 0.06029950,
//         size.height * 0.5058860);
//     path_51.cubicTo(
//         size.width * 0.04527295,
//         size.height * 0.5057267,
//         size.width * 0.04934533,
//         size.height * 0.4836162,
//         size.width * 0.04934533,
//         size.height * 0.4836162);
//     path_51.cubicTo(
//         size.width * 0.04934533,
//         size.height * 0.4836162,
//         size.width * 0.04358472,
//         size.height * 0.4843836,
//         size.width * 0.03995051,
//         size.height * 0.4885755);
//     path_51.cubicTo(
//         size.width * 0.03456364,
//         size.height * 0.4987403,
//         size.width * 0.02851951,
//         size.height * 0.4974805,
//         size.width * 0.02580030,
//         size.height * 0.5038878);
//     path_51.cubicTo(
//         size.width * 0.02273313,
//         size.height * 0.5156671,
//         size.width * 0.01962730,
//         size.height * 0.5128291,
//         size.width * 0.02340327,
//         size.height * 0.5245432);
//     path_51.cubicTo(
//         size.width * 0.02395742,
//         size.height * 0.5262735,
//         size.width * 0.02406052,
//         size.height * 0.5277359,
//         size.width * 0.02385432,
//         size.height * 0.5289667);
//     path_51.cubicTo(
//         size.width * 0.02261715,
//         size.height * 0.5360401,
//         size.width * 0.01051601,
//         size.height * 0.5354175,
//         size.width * 0.01051601,
//         size.height * 0.5354175);
//     path_51.cubicTo(
//         size.width * 0.01051601,
//         size.height * 0.5354175,
//         size.width * 0.003234703,
//         size.height * 0.5211983,
//         size.width * 0.002912521,
//         size.height * 0.5184327);
//     path_51.cubicTo(
//         size.width * 0.002590340,
//         size.height * 0.5156671,
//         size.width * 0.001933089,
//         size.height * 0.5110046,
//         size.width * 0.004922934,
//         size.height * 0.4971547);
//     path_51.cubicTo(
//         size.width * 0.007912779,
//         size.height * 0.4833049,
//         size.width * 0.003157379,
//         size.height * 0.4886044,
//         size.width * 0.01445951,
//         size.height * 0.4762025);
//     path_51.cubicTo(
//         size.width * 0.03190886,
//         size.height * 0.4577336,
//         size.width * 0.03312026,
//         size.height * 0.4469607,
//         size.width * 0.04391979,
//         size.height * 0.4339724);
//     path_51.cubicTo(
//         size.width * 0.04391979,
//         size.height * 0.4339724,
//         size.width * 0.04389402,
//         size.height * 0.4339724,
//         size.width * 0.04391979,
//         size.height * 0.4339579);
//     path_51.cubicTo(
//         size.width * 0.04520852,
//         size.height * 0.4323868,
//         size.width * 0.04666478,
//         size.height * 0.4307796,
//         size.width * 0.04830146,
//         size.height * 0.4291217);
//     path_51.cubicTo(
//         size.width * 0.06725862,
//         size.height * 0.4062147,
//         size.width * 0.09566215,
//         size.height * 0.3584026,
//         size.width * 0.1240786,
//         size.height * 0.3392387);
//     path_51.cubicTo(
//         size.width * 0.1524821,
//         size.height * 0.3200892,
//         size.width * 0.1616707,
//         size.height * 0.3181634,
//         size.width * 0.1678566,
//         size.height * 0.3097941);
//     path_51.cubicTo(
//         size.width * 0.1782824,
//         size.height * 0.2960166,
//         size.width * 0.1867107,
//         size.height * 0.2860618,
//         size.width * 0.1936053,
//         size.height * 0.2787785);
//     path_51.cubicTo(
//         size.width * 0.2090572,
//         size.height * 0.2623657,
//         size.width * 0.2165447,
//         size.height * 0.2594408,
//         size.width * 0.2207201,
//         size.height * 0.2566824);
//     path_51.cubicTo(
//         size.width * 0.2221764,
//         size.height * 0.2557195,
//         size.width * 0.2232074,
//         size.height * 0.2547711,
//         size.width * 0.2240451,
//         size.height * 0.2532797);
//     path_51.cubicTo(
//         size.width * 0.2364297,
//         size.height * 0.2268179,
//         size.width * 0.2407083,
//         size.height * 0.2253844,
//         size.width * 0.2441363,
//         size.height * 0.2185645);
//     path_51.cubicTo(
//         size.width * 0.2644080,
//         size.height * 0.1814529,
//         size.width * 0.3212279,
//         size.height * 0.1794257,
//         size.width * 0.3261379,
//         size.height * 0.1787017);
//     path_51.cubicTo(
//         size.width * 0.3281226,
//         size.height * 0.1784194,
//         size.width * 0.3316795,
//         size.height * 0.1779198,
//         size.width * 0.3354039,
//         size.height * 0.1773841);
//     path_51.cubicTo(
//         size.width * 0.3354812,
//         size.height * 0.1773696,
//         size.width * 0.3355328,
//         size.height * 0.1773696,
//         size.width * 0.3355843,
//         size.height * 0.1773696);
//     path_51.cubicTo(
//         size.width * 0.3411258,
//         size.height * 0.1765732,
//         size.width * 0.3469638,
//         size.height * 0.1757117,
//         size.width * 0.3483685,
//         size.height * 0.1753569);
//     path_51.cubicTo(
//         size.width * 0.3507140,
//         size.height * 0.1747488,
//         size.width * 0.3628924,
//         size.height * 0.1686528,
//         size.width * 0.3703670,
//         size.height * 0.1667270);
//     path_51.cubicTo(
//         size.width * 0.3778416,
//         size.height * 0.1648157,
//         size.width * 0.4083845,
//         size.height * 0.1578654,
//         size.width * 0.4160653,
//         size.height * 0.1557152);
//     path_51.cubicTo(
//         size.width * 0.4237461,
//         size.height * 0.1535577,
//         size.width * 0.4376385,
//         size.height * 0.1458906,
//         size.width * 0.4376385,
//         size.height * 0.1458906);
//     path_51.cubicTo(
//         size.width * 0.4379865,
//         size.height * 0.1438780,
//         size.width * 0.4382700,
//         size.height * 0.1399250,
//         size.width * 0.4384891,
//         size.height * 0.1354580);
//     path_51.lineTo(size.width * 0.4384891, size.height * 0.1353711);
//     path_51.cubicTo(
//         size.width * 0.4389402,
//         size.height * 0.1255466,
//         size.width * 0.4391463,
//         size.height * 0.1132171,
//         size.width * 0.4391463,
//         size.height * 0.1132171);
//     path_51.cubicTo(
//         size.width * 0.4348678,
//         size.height * 0.1084243,
//         size.width * 0.4340301,
//         size.height * 0.1002867,
//         size.width * 0.4340301,
//         size.height * 0.1002867);
//     path_51.cubicTo(
//         size.width * 0.4233337,
//         size.height * 0.1014885,
//         size.width * 0.4156529,
//         size.height * 0.09873013,
//         size.width * 0.4135136,
//         size.height * 0.08280965);
//     path_51.cubicTo(
//         size.width * 0.4113743,
//         size.height * 0.06688917,
//         size.width * 0.4280891,
//         size.height * 0.06990820,
//         size.width * 0.4280891,
//         size.height * 0.06990820);

//     Paint paint51Fill = Paint()..style = PaintingStyle.fill;
//     paint51Fill.color = randomColor().withOpacity(1.0);
//     canvas.drawPath(path_51, paint51Fill);

//     Path path_52 = Path();
//     path_52.moveTo(size.width * 0.02378989, size.height * 0.5289450);
//     path_52.cubicTo(
//         size.width * 0.02378989,
//         size.height * 0.5289450,
//         size.width * 0.03657405,
//         size.height * 0.5298427,
//         size.width * 0.03453786,
//         size.height * 0.5227984);
//     path_52.cubicTo(
//         size.width * 0.03250168,
//         size.height * 0.5157540,
//         size.width * 0.03507913,
//         size.height * 0.5141467,
//         size.width * 0.03482138,
//         size.height * 0.5072182);
//     path_52.cubicTo(
//         size.width * 0.03456364,
//         size.height * 0.5002896,
//         size.width * 0.04413887,
//         size.height * 0.5003041,
//         size.width * 0.04166452,
//         size.height * 0.4869538);
//     path_52.moveTo(size.width * 0.5719754, size.height * 0.06986476);
//     path_52.cubicTo(
//         size.width * 0.5719754,
//         size.height * 0.06986476,
//         size.width * 0.5886773,
//         size.height * 0.06684573,
//         size.width * 0.5865380,
//         size.height * 0.08276621);
//     path_52.cubicTo(
//         size.width * 0.5843987,
//         size.height * 0.09868669,
//         size.width * 0.5767179,
//         size.height * 0.1014451,
//         size.width * 0.5660343,
//         size.height * 0.1002433);
//     path_52.cubicTo(
//         size.width * 0.5660343,
//         size.height * 0.1002433,
//         size.width * 0.5651838,
//         size.height * 0.1083809,
//         size.width * 0.5609052,
//         size.height * 0.1131737);
//     path_52.cubicTo(
//         size.width * 0.5609052,
//         size.height * 0.1131737,
//         size.width * 0.5613305,
//         size.height * 0.1393892,
//         size.width * 0.5624001,
//         size.height * 0.1458544);
//     path_52.cubicTo(
//         size.width * 0.5624001,
//         size.height * 0.1458544,
//         size.width * 0.5762797,
//         size.height * 0.1535142,
//         size.width * 0.5839734,
//         size.height * 0.1556717);
//     path_52.cubicTo(
//         size.width * 0.5916671,
//         size.height * 0.1578292,
//         size.width * 0.6222099,
//         size.height * 0.1647722,
//         size.width * 0.6296845,
//         size.height * 0.1666836);
//     path_52.cubicTo(
//         size.width * 0.6371591,
//         size.height * 0.1686021,
//         size.width * 0.6493376,
//         size.height * 0.1747053,
//         size.width * 0.6516831,
//         size.height * 0.1753062);
//     path_52.cubicTo(
//         size.width * 0.6540286,
//         size.height * 0.1759072,
//         size.width * 0.6689907,
//         size.height * 0.1779416,
//         size.width * 0.6739007,
//         size.height * 0.1786583);
//     path_52.cubicTo(
//         size.width * 0.6788108,
//         size.height * 0.1793751,
//         size.width * 0.7356307,
//         size.height * 0.1814095,
//         size.width * 0.7559281,
//         size.height * 0.2185210);
//     path_52.cubicTo(
//         size.width * 0.7593433,
//         size.height * 0.2253482,
//         size.width * 0.7636218,
//         size.height * 0.2267817,
//         size.width * 0.7760065,
//         size.height * 0.2532362);
//     path_52.cubicTo(
//         size.width * 0.7802722,
//         size.height * 0.2608960,
//         size.width * 0.7901052,
//         size.height * 0.2540760,
//         size.width * 0.8321821,
//         size.height * 0.3097434);
//     path_52.cubicTo(
//         size.width * 0.8383808,
//         size.height * 0.3181272,
//         size.width * 0.8475566,
//         size.height * 0.3200385,
//         size.width * 0.8759730,
//         size.height * 0.3391952);
//     path_52.cubicTo(
//         size.width * 0.9043894,
//         size.height * 0.3583519,
//         size.width * 0.9327929,
//         size.height * 0.4061640,
//         size.width * 0.9517501,
//         size.height * 0.4290710);
//     path_52.cubicTo(
//         size.width * 0.9668797,
//         size.height * 0.4444195,
//         size.width * 0.9660292,
//         size.height * 0.4554458,
//         size.width * 0.9855920,
//         size.height * 0.4761591);
//     path_52.cubicTo(
//         size.width * 0.9968942,
//         size.height * 0.4885610,
//         size.width * 0.9921388,
//         size.height * 0.4832614,
//         size.width * 0.9951157,
//         size.height * 0.4971185);
//     path_52.cubicTo(
//         size.width * 0.9980927,
//         size.height * 0.5109756,
//         size.width * 0.9974483,
//         size.height * 0.5156309,
//         size.width * 0.9971390,
//         size.height * 0.5183965);
//     path_52.cubicTo(
//         size.width * 0.9968297,
//         size.height * 0.5211621,
//         size.width * 0.9895355,
//         size.height * 0.5353740,
//         size.width * 0.9895355,
//         size.height * 0.5353740);
//     path_52.cubicTo(
//         size.width * 0.9895355,
//         size.height * 0.5353740,
//         size.width * 0.9728852,
//         size.height * 0.5362356,
//         size.width * 0.9766483,
//         size.height * 0.5245070);
//     path_52.cubicTo(
//         size.width * 0.9804114,
//         size.height * 0.5127784,
//         size.width * 0.9773055,
//         size.height * 0.5156236,
//         size.width * 0.9742255,
//         size.height * 0.5038444);
//     path_52.cubicTo(
//         size.width * 0.9715320,
//         size.height * 0.4974371,
//         size.width * 0.9654750,
//         size.height * 0.4987041,
//         size.width * 0.9601010,
//         size.height * 0.4885393);
//     path_52.cubicTo(
//         size.width * 0.9564539,
//         size.height * 0.4843546,
//         size.width * 0.9506804,
//         size.height * 0.4835800,
//         size.width * 0.9506804,
//         size.height * 0.4835800);
//     path_52.cubicTo(
//         size.width * 0.9506804,
//         size.height * 0.4835800,
//         size.width * 0.9547657,
//         size.height * 0.5056833,
//         size.width * 0.9397263,
//         size.height * 0.5058498);
//     path_52.cubicTo(
//         size.width * 0.9246868,
//         size.height * 0.5060163,
//         size.width * 0.9277669,
//         size.height * 0.4958950,
//         size.width * 0.9258467,
//         size.height * 0.4838406);
//     path_52.cubicTo(
//         size.width * 0.9242229,
//         size.height * 0.4766731,
//         size.width * 0.9222125,
//         size.height * 0.4727781,
//         size.width * 0.9181401,
//         size.height * 0.4699907);
//     path_52.cubicTo(
//         size.width * 0.9140677,
//         size.height * 0.4672034,
//         size.width * 0.9095056,
//         size.height * 0.4602241,
//         size.width * 0.9177019,
//         size.height * 0.4539110);
//     path_52.cubicTo(
//         size.width * 0.9210011,
//         size.height * 0.4511453,
//         size.width * 0.9076757,
//         size.height * 0.4406982,
//         size.width * 0.9045956,
//         size.height * 0.4384394);
//     path_52.cubicTo(
//         size.width * 0.8760761,
//         size.height * 0.4217298,
//         size.width * 0.8611526,
//         size.height * 0.4215415,
//         size.width * 0.8297850,
//         size.height * 0.3996047);
//     path_52.cubicTo(
//         size.width * 0.7984174,
//         size.height * 0.3776607,
//         size.width * 0.8027733,
//         size.height * 0.3739394,
//         size.width * 0.7839966,
//         size.height * 0.3570053);
//     path_52.cubicTo(
//         size.width * 0.7718568,
//         size.height * 0.3472532,
//         size.width * 0.7231043,
//         size.height * 0.3106846,
//         size.width * 0.7166864,
//         size.height * 0.3073470);
//     path_52.cubicTo(
//         size.width * 0.7102815,
//         size.height * 0.3040094,
//         size.width * 0.6974586,
//         size.height * 0.2983623,
//         size.width * 0.6903578,
//         size.height * 0.2886102);
//     path_52.cubicTo(
//         size.width * 0.6903578,
//         size.height * 0.2886102,
//         size.width * 0.6853188,
//         size.height * 0.3092656,
//         size.width * 0.6514382,
//         size.height * 0.3458342);
//     path_52.cubicTo(
//         size.width * 0.6333574,
//         size.height * 0.3659755,
//         size.width * 0.6448013,
//         size.height * 0.3874055,
//         size.width * 0.6477782,
//         size.height * 0.4069097);
//     path_52.cubicTo(
//         size.width * 0.6507552,
//         size.height * 0.4264139,
//         size.width * 0.6606011,
//         size.height * 0.4667038,
//         size.width * 0.6651760,
//         size.height * 0.4768397);
//     path_52.cubicTo(
//         size.width * 0.6697510,
//         size.height * 0.4869755,
//         size.width * 0.7231558,
//         size.height * 0.5910197,
//         size.width * 0.6744678,
//         size.height * 0.6846457);
//     path_52.cubicTo(
//         size.width * 0.6749446,
//         size.height * 0.7071182,
//         size.width * 0.6782824,
//         size.height * 0.7068504,
//         size.width * 0.6801897,
//         size.height * 0.7127364);
//     path_52.cubicTo(
//         size.width * 0.6820970,
//         size.height * 0.7186224,
//         size.width * 0.6806665,
//         size.height * 0.7226333,
//         size.width * 0.6830507,
//         size.height * 0.7290551);
//     path_52.cubicTo(
//         size.width * 0.6854348,
//         size.height * 0.7354768,
//         size.width * 0.7202820,
//         size.height * 0.7737323,
//         size.width * 0.6983221,
//         size.height * 0.8438215);
//     path_52.cubicTo(
//         size.width * 0.6945074,
//         size.height * 0.8673656,
//         size.width * 0.6859116,
//         size.height * 0.8933133,
//         size.width * 0.6906799,
//         size.height * 0.9077568);
//     path_52.cubicTo(
//         size.width * 0.6933605,
//         size.height * 0.9166908,
//         size.width * 0.6943915,
//         size.height * 0.9203252,
//         size.width * 0.6946492,
//         size.height * 0.9249732);
//     path_52.cubicTo(
//         size.width * 0.6971622,
//         size.height * 0.9296574,
//         size.width * 0.7141090,
//         size.height * 0.9439924,
//         size.width * 0.7185035,
//         size.height * 0.9481191);
//     path_52.cubicTo(
//         size.width * 0.7228981,
//         size.height * 0.9522530,
//         size.width * 0.7201918,
//         size.height * 0.9525137,
//         size.width * 0.7307464,
//         size.height * 0.9572992);
//     path_52.cubicTo(
//         size.width * 0.7412882,
//         size.height * 0.9620848,
//         size.width * 0.7553998,
//         size.height * 0.9674640,
//         size.width * 0.7626295,
//         size.height * 0.9764270);
//     path_52.cubicTo(
//         size.width * 0.7674880,
//         size.height * 0.9830008,
//         size.width * 0.7632223,
//         size.height * 0.9858605,
//         size.width * 0.7571782,
//         size.height * 0.9859257);
//     path_52.cubicTo(
//         size.width * 0.7571782,
//         size.height * 0.9859257,
//         size.width * 0.7572942,
//         size.height * 0.9897773,
//         size.width * 0.7506573,
//         size.height * 0.9896470);
//     path_52.cubicTo(
//         size.width * 0.7506573,
//         size.height * 0.9896470,
//         size.width * 0.7482860,
//         size.height * 0.9950262,
//         size.width * 0.7392778,
//         size.height * 0.9936289);
//     path_52.cubicTo(
//         size.width * 0.7392778,
//         size.height * 0.9936289,
//         size.width * 0.7318161,
//         size.height * 0.9995366,
//         size.width * 0.7224470,
//         size.height * 0.9948887);
//     path_52.cubicTo(
//         size.width * 0.7224470,
//         size.height * 0.9948887,
//         size.width * 0.7023042,
//         size.height * 1.006378,
//         size.width * 0.6840559,
//         size.height * 0.9885103);
//     path_52.cubicTo(
//         size.width * 0.6840559,
//         size.height * 0.9885103,
//         size.width * 0.6604722,
//         size.height * 0.9847890,
//         size.width * 0.6622506,
//         size.height * 0.9726333);
//     path_52.cubicTo(
//         size.width * 0.6624826,
//         size.height * 0.9687165,
//         size.width * 0.6553817,
//         size.height * 0.9666532,
//         size.width * 0.6454199,
//         size.height * 0.9634676);
//     path_52.cubicTo(
//         size.width * 0.6354709,
//         size.height * 0.9602821,
//         size.width * 0.6290659,
//         size.height * 0.9578205,
//         size.width * 0.6348781,
//         size.height * 0.9390258);
//     path_52.cubicTo(
//         size.width * 0.6361797,
//         size.height * 0.9332484,
//         size.width * 0.6341693,
//         size.height * 0.9270076,
//         size.width * 0.6341693,
//         size.height * 0.9270076);
//     path_52.cubicTo(
//         size.width * 0.6341693,
//         size.height * 0.9270076,
//         size.width * 0.6270555,
//         size.height * 0.9251470,
//         size.width * 0.6293108,
//         size.height * 0.9110003);
//     path_52.cubicTo(
//         size.width * 0.6315661,
//         size.height * 0.8968536,
//         size.width * 0.6336538,
//         size.height * 0.8831630,
//         size.width * 0.6025182,
//         size.height * 0.8273508);
//     path_52.cubicTo(
//         size.width * 0.5963581,
//         size.height * 0.8156512,
//         size.width * 0.5802748,
//         size.height * 0.8233254,
//         size.width * 0.5925950,
//         size.height * 0.7730662);
//     path_52.cubicTo(
//         size.width * 0.5994381,
//         size.height * 0.7389230,
//         size.width * 0.5973890,
//         size.height * 0.7451420,
//         size.width * 0.5884839,
//         size.height * 0.7351293);
//     path_52.cubicTo(
//         size.width * 0.5795917,
//         size.height * 0.7251166,
//         size.width * 0.5628125,
//         size.height * 0.7153355,
//         size.width * 0.5590494,
//         size.height * 0.6880991);
//     path_52.cubicTo(
//         size.width * 0.5552864,
//         size.height * 0.6608627,
//         size.width * 0.5450152,
//         size.height * 0.6391865,
//         size.width * 0.5381721,
//         size.height * 0.6265312);
//     path_52.cubicTo(
//         size.width * 0.5313289,
//         size.height * 0.6138687,
//         size.width * 0.5063405,
//         size.height * 0.5818395,
//         size.width * 0.5036084,
//         size.height * 0.5569054);
//     path_52.cubicTo(
//         size.width * 0.5028352,
//         size.height * 0.5426718,
//         size.width * 0.5034409,
//         size.height * 0.5357794,
//         size.width * 0.5002320,
//         size.height * 0.5357794);

//     Paint paint52Fill = Paint()..style = PaintingStyle.fill;
//     paint52Fill.color = randomColor().withOpacity(1.0);
//     canvas.drawPath(path_52, paint52Fill);

//     Path path_53 = Path();
//     path_53.moveTo(size.width * 0.9761972, size.height * 0.5289450);
//     path_53.cubicTo(
//         size.width * 0.9761972,
//         size.height * 0.5289450,
//         size.width * 0.9634131,
//         size.height * 0.5298427,
//         size.width * 0.9654492,
//         size.height * 0.5227984);
//     path_53.cubicTo(
//         size.width * 0.9674854,
//         size.height * 0.5157540,
//         size.width * 0.9649080,
//         size.height * 0.5141467,
//         size.width * 0.9651657,
//         size.height * 0.5072182);
//     path_53.cubicTo(
//         size.width * 0.9654235,
//         size.height * 0.5002896,
//         size.width * 0.9558482,
//         size.height * 0.5003041,
//         size.width * 0.9583226,
//         size.height * 0.4869538);
//     path_53.moveTo(size.width * 0.4282051, size.height * 0.06977788);
//     path_53.cubicTo(
//         size.width * 0.4282051,
//         size.height * 0.06977788,
//         size.width * 0.4290170,
//         size.height * 0.05739770,
//         size.width * 0.4282051,
//         size.height * 0.04939764);
//     path_53.cubicTo(
//         size.width * 0.4273932,
//         size.height * 0.04139758,
//         size.width * 0.4380638,
//         size.height * 0.02633141,
//         size.width * 0.4537218,
//         size.height * 0.03076945);
//     path_53.cubicTo(
//         size.width * 0.4702175,
//         size.height * 0.03544641,
//         size.width * 0.5139698,
//         size.height * 0.03352060,
//         size.width * 0.5432883,
//         size.height * 0.02689612);
//     path_53.cubicTo(
//         size.width * 0.5544100,
//         size.height * 0.02502100,
//         size.width * 0.5636502,
//         size.height * 0.03915322,
//         size.width * 0.5655446,
//         size.height * 0.05078046);
//     path_53.cubicTo(
//         size.width * 0.5674390,
//         size.height * 0.06240769,
//         size.width * 0.5696170,
//         size.height * 0.06840955,
//         size.width * 0.5720527,
//         size.height * 0.06978512);

//     Paint paint53Fill = Paint()..style = PaintingStyle.fill;
//     paint53Fill.color = randomColor().withOpacity(1.0);
//     canvas.drawPath(path_53, paint53Fill);

//     Path path_54 = Path();
//     path_54.moveTo(size.width * 0.4245966, size.height * 0.06740320);
//     path_54.cubicTo(
//         size.width * 0.4245966,
//         size.height * 0.06740320,
//         size.width * 0.4176633,
//         size.height * 0.05536330,
//         size.width * 0.4160137,
//         size.height * 0.04546639);
//     path_54.cubicTo(
//         size.width * 0.4143641,
//         size.height * 0.03556949,
//         size.width * 0.4209624,
//         size.height * 0.01924358,
//         size.width * 0.4311949,
//         size.height * 0.01544989);
//     path_54.cubicTo(
//         size.width * 0.4311949,
//         size.height * 0.01544989,
//         size.width * 0.4330636,
//         size.height * 0.01285801,
//         size.width * 0.4297773,
//         size.height * 0.01122180);
//     path_54.cubicTo(
//         size.width * 0.4264911,
//         size.height * 0.009585590,
//         size.width * 0.4316975,
//         size.height * 0.006870638,
//         size.width * 0.4404093,
//         size.height * 0.007037155);
//     path_54.cubicTo(
//         size.width * 0.4491211,
//         size.height * 0.007203672,
//         size.width * 0.4372390,
//         size.height * 0.001614491,
//         size.width * 0.4562477,
//         size.height * 0.003699574);
//     path_54.cubicTo(
//         size.width * 0.4651915,
//         size.height * 0.003981929,
//         size.width * 0.4646245,
//         size.height * 0.0003619936,
//         size.width * 0.4711841,
//         size.height * 0.001781008);
//     path_54.cubicTo(
//         size.width * 0.4711841,
//         size.height * 0.001781008,
//         size.width * 0.5160318,
//         size.height * 0.0008760244,
//         size.width * 0.5426053,
//         size.height * 0.009556630);
//     path_54.cubicTo(
//         size.width * 0.5691788,
//         size.height * 0.01823724,
//         size.width * 0.5879040,
//         size.height * 0.02895225,
//         size.width * 0.5732641,
//         size.height * 0.06588283);
//     path_54.moveTo(size.width * 0.5611758, size.height * 0.1131809);
//     path_54.cubicTo(
//         size.width * 0.5611758,
//         size.height * 0.1131809,
//         size.width * 0.5452472,
//         size.height * 0.1301439,
//         size.width * 0.5005284,
//         size.height * 0.1346326);
//     path_54.moveTo(size.width * 0.4393525, size.height * 0.1131809);
//     path_54.cubicTo(
//         size.width * 0.4393525,
//         size.height * 0.1131809,
//         size.width * 0.4552812,
//         size.height * 0.1301439,
//         size.width * 0.5000000,
//         size.height * 0.1346326);
//     path_54.moveTo(size.width * 0.7262488, size.height * 0.2473140);
//     path_54.cubicTo(
//         size.width * 0.7262488,
//         size.height * 0.2469013,
//         size.width * 0.7262230,
//         size.height * 0.2464887,
//         size.width * 0.7261972,
//         size.height * 0.2460543);
//     path_54.cubicTo(
//         size.width * 0.7251920,
//         size.height * 0.2293012,
//         size.width * 0.7143925,
//         size.height * 0.1952666,
//         size.width * 0.6471725,
//         size.height * 0.1762691);
//     path_54.moveTo(size.width * 0.9384375, size.height * 0.4482349);
//     path_54.cubicTo(
//         size.width * 0.9074179,
//         size.height * 0.4085315,
//         size.width * 0.8621578,
//         size.height * 0.3731357,
//         size.width * 0.8213954,
//         size.height * 0.3420912);
//     path_54.moveTo(size.width * 0.8057374, size.height * 0.3301888);
//     path_54.cubicTo(
//         size.width * 0.8057374,
//         size.height * 0.3301888,
//         size.width * 0.8056859,
//         size.height * 0.3301309,
//         size.width * 0.8056601,
//         size.height * 0.3301164);
//     path_54.cubicTo(
//         size.width * 0.8055312,
//         size.height * 0.3300295,
//         size.width * 0.8054281,
//         size.height * 0.3299354,
//         size.width * 0.8053121,
//         size.height * 0.3298485);
//     path_54.cubicTo(
//         size.width * 0.8050802,
//         size.height * 0.3296675,
//         size.width * 0.8049384,
//         size.height * 0.3295662,
//         size.width * 0.8049384,
//         size.height * 0.3295662);
//     path_54.cubicTo(
//         size.width * 0.7688025,
//         size.height * 0.2967768,
//         size.width * 0.7191350,
//         size.height * 0.2690988,
//         size.width * 0.7362751,
//         size.height * 0.2476470);
//     path_54.moveTo(size.width * 0.5218955, size.height * 0.1826040);
//     path_54.cubicTo(
//         size.width * 0.5928656,
//         size.height * 0.2014132,
//         size.width * 0.6164622,
//         size.height * 0.2352886,
//         size.width * 0.7262359,
//         size.height * 0.2473140);
//     path_54.moveTo(size.width * 0.5920666, size.height * 0.5622629);
//     path_54.cubicTo(
//         size.width * 0.5636373,
//         size.height * 0.6469187,
//         size.width * 0.5945023,
//         size.height * 0.6849425,
//         size.width * 0.5689855,
//         size.height * 0.6978440);
//     path_54.moveTo(size.width * 0.6468761, size.height * 0.6902638);
//     path_54.cubicTo(
//         size.width * 0.5782386,
//         size.height * 0.6745750,
//         size.width * 0.6756920,
//         size.height * 0.5831137,
//         size.width * 0.6346977,
//         size.height * 0.4434059);
//     path_54.moveTo(size.width * 0.6908088, size.height * 0.9077640);
//     path_54.cubicTo(
//         size.width * 0.6714135,
//         size.height * 0.9155759,
//         size.width * 0.6426620,
//         size.height * 0.9132301,
//         size.width * 0.6304449,
//         size.height * 0.9033332);

//     Paint paint54Fill = Paint()..style = PaintingStyle.fill;
//     paint54Fill.color = randomColor().withOpacity(1.0);
//     canvas.drawPath(path_54, paint54Fill);

//     Path path_55 = Path();
//     path_55.moveTo(size.width * 0.6628563, size.height * 0.7388796);
//     path_55.cubicTo(
//         size.width * 0.6717872,
//         size.height * 0.8093163,
//         size.width * 0.6746611,
//         size.height * 0.8314341,
//         size.width * 0.6760271,
//         size.height * 0.9116012);
//     path_55.moveTo(size.width * 0.6228800, size.height * 0.7508326);
//     path_55.cubicTo(
//         size.width * 0.6229831,
//         size.height * 0.7512453,
//         size.width * 0.6478684,
//         size.height * 0.8493962,
//         size.width * 0.6562838,
//         size.height * 0.9120283);
//     path_55.moveTo(size.width * 0.8049384, size.height * 0.3295662);
//     path_55.cubicTo(
//         size.width * 0.8049384,
//         size.height * 0.3295662,
//         size.width * 0.8247590,
//         size.height * 0.3446541,
//         size.width * 0.8008274,
//         size.height * 0.3476224);
//     path_55.moveTo(size.width * 0.6991211, size.height * 0.2499204);
//     path_55.cubicTo(
//         size.width * 0.6991211,
//         size.height * 0.2499204,
//         size.width * 0.7240837,
//         size.height * 0.2567041,
//         size.width * 0.7418424,
//         size.height * 0.2754047);
//     path_55.moveTo(size.width * 0.2737512, size.height * 0.2473140);
//     path_55.cubicTo(
//         size.width * 0.2737512,
//         size.height * 0.2469013,
//         size.width * 0.2737770,
//         size.height * 0.2464887,
//         size.width * 0.2738028,
//         size.height * 0.2460543);
//     path_55.cubicTo(
//         size.width * 0.2748080,
//         size.height * 0.2293012,
//         size.width * 0.2856075,
//         size.height * 0.1952666,
//         size.width * 0.3528275,
//         size.height * 0.1762691);
//     path_55.moveTo(size.width * 0.06156245, size.height * 0.4482349);
//     path_55.cubicTo(
//         size.width * 0.09258209,
//         size.height * 0.4085315,
//         size.width * 0.1378422,
//         size.height * 0.3731357,
//         size.width * 0.1786046,
//         size.height * 0.3420912);
//     path_55.moveTo(size.width * 0.1942626, size.height * 0.3301888);
//     path_55.cubicTo(
//         size.width * 0.1942626,
//         size.height * 0.3301888,
//         size.width * 0.1943141,
//         size.height * 0.3301309,
//         size.width * 0.1943399,
//         size.height * 0.3301164);
//     path_55.cubicTo(
//         size.width * 0.1944688,
//         size.height * 0.3300295,
//         size.width * 0.1945719,
//         size.height * 0.3299354,
//         size.width * 0.1946879,
//         size.height * 0.3298485);
//     path_55.cubicTo(
//         size.width * 0.1949198,
//         size.height * 0.3296675,
//         size.width * 0.1950616,
//         size.height * 0.3295662,
//         size.width * 0.1950616,
//         size.height * 0.3295662);
//     path_55.cubicTo(
//         size.width * 0.2311975,
//         size.height * 0.2967768,
//         size.width * 0.2808650,
//         size.height * 0.2690988,
//         size.width * 0.2637249,
//         size.height * 0.2476470);
//     path_55.moveTo(size.width * 0.4781045, size.height * 0.1826040);
//     path_55.cubicTo(
//         size.width * 0.4071344,
//         size.height * 0.2014132,
//         size.width * 0.3835378,
//         size.height * 0.2352886,
//         size.width * 0.2737641,
//         size.height * 0.2473140);
//     path_55.moveTo(size.width * 0.4079334, size.height * 0.5622629);
//     path_55.cubicTo(
//         size.width * 0.4363627,
//         size.height * 0.6469187,
//         size.width * 0.4054977,
//         size.height * 0.6849425,
//         size.width * 0.4310145,
//         size.height * 0.6978440);
//     path_55.moveTo(size.width * 0.3531239, size.height * 0.6902638);
//     path_55.cubicTo(
//         size.width * 0.4217614,
//         size.height * 0.6745750,
//         size.width * 0.3243080,
//         size.height * 0.5831137,
//         size.width * 0.3653023,
//         size.height * 0.4434059);
//     path_55.moveTo(size.width * 0.3091912, size.height * 0.9077640);
//     path_55.cubicTo(
//         size.width * 0.3285865,
//         size.height * 0.9155759,
//         size.width * 0.3573380,
//         size.height * 0.9132301,
//         size.width * 0.3695551,
//         size.height * 0.9033332);

//     Paint paint55Fill = Paint()..style = PaintingStyle.fill;
//     paint55Fill.color = randomColor().withOpacity(1.0);
//     canvas.drawPath(path_55, paint55Fill);

//     Path path_56 = Path();
//     path_56.moveTo(size.width * 0.3371437, size.height * 0.7388796);
//     path_56.cubicTo(
//         size.width * 0.3282128,
//         size.height * 0.8093163,
//         size.width * 0.3253389,
//         size.height * 0.8314341,
//         size.width * 0.3239729,
//         size.height * 0.9116012);
//     path_56.moveTo(size.width * 0.3771200, size.height * 0.7508326);
//     path_56.cubicTo(
//         size.width * 0.3770169,
//         size.height * 0.7512453,
//         size.width * 0.3521316,
//         size.height * 0.8493962,
//         size.width * 0.3437162,
//         size.height * 0.9120283);
//     path_56.moveTo(size.width * 0.1950616, size.height * 0.3295662);
//     path_56.cubicTo(
//         size.width * 0.1950616,
//         size.height * 0.3295662,
//         size.width * 0.1752410,
//         size.height * 0.3446541,
//         size.width * 0.1991726,
//         size.height * 0.3476224);
//     path_56.moveTo(size.width * 0.3008660, size.height * 0.2499204);
//     path_56.cubicTo(
//         size.width * 0.3008660,
//         size.height * 0.2499204,
//         size.width * 0.2759034,
//         size.height * 0.2567041,
//         size.width * 0.2581447,
//         size.height * 0.2754047);

//     Paint paint56Fill = Paint()..style = PaintingStyle.fill;
//     paint56Fill.color = randomColor().withOpacity(1.0);
//     canvas.drawPath(path_56, paint56Fill);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
// }
