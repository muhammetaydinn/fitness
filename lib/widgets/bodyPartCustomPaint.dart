// import 'dart:ui' as ui;

// import 'package:flutter/material.dart';



// //Copy this CustomPainter code to the Bottom of the File
// class RPSCustomPainter extends CustomPainter {
//     @override
//     void paint(Canvas canvas, Size size) {
            
// Path path_0 = Path();
//     path_0.moveTo(size.width*0.4407713,size.height*0.7433993);
//     path_0.cubicTo(size.width*0.4465410,size.height*0.7323682,size.width*0.4480112,size.height*0.7208350,size.width*0.4517438,size.height*0.7095654);
//     path_0.cubicTo(size.width*0.4542847,size.height*0.7018938,size.width*0.4551446,size.height*0.6939396,size.width*0.4589829,size.height*0.6865254);
//     path_0.cubicTo(size.width*0.4640762,size.height*0.6766871,size.width*0.4622841,size.height*0.6680648,size.width*0.4517631,size.height*0.6600790);
//     path_0.cubicTo(size.width*0.4424950,size.height*0.6530444,size.width*0.4347186,size.height*0.6452161,size.width*0.4277960,size.height*0.6375306);
//     path_0.cubicTo(size.width*0.4209314,size.height*0.6299096,size.width*0.4202958,size.height*0.6202191,size.width*0.4174080,size.height*0.6113800);
//     path_0.cubicTo(size.width*0.4095650,size.height*0.5873736,size.width*0.4061453,size.height*0.5629949,size.width*0.4004945,size.height*0.5388067);
//     path_0.cubicTo(size.width*0.3967962,size.height*0.5229761,size.width*0.3934749,size.height*0.5070236,size.width*0.3845480,size.height*0.4916968);
//     path_0.cubicTo(size.width*0.3783751,size.height*0.4810984,size.width*0.3679089,size.height*0.4723508,size.width*0.3566349,size.height*0.4637558);
//     path_0.cubicTo(size.width*0.3627181,size.height*0.4605602,size.width*0.3691766,size.height*0.4621068,size.width*0.3745777,size.height*0.4637863);
//     path_0.cubicTo(size.width*0.4156072,size.height*0.4765443,size.width*0.4416150,size.height*0.4965135,size.width*0.4547979,size.height*0.5230573);
//     path_0.cubicTo(size.width*0.4610805,size.height*0.5357075,size.width*0.4679604,size.height*0.5482742,size.width*0.4774647,size.height*0.5603711);
//     path_0.cubicTo(size.width*0.4836515,size.height*0.5682453,size.width*0.4935514,size.height*0.5727245,size.width*0.5055347,size.height*0.5729467);
//     path_0.cubicTo(size.width*0.5168773,size.height*0.5731569,size.width*0.5256040,size.height*0.5675567,size.width*0.5318867,size.height*0.5611285);
//     path_0.cubicTo(size.width*0.5418266,size.height*0.5509585,size.width*0.5481762,size.height*0.5399799,size.width*0.5535348,size.height*0.5288461);
//     path_0.cubicTo(size.width*0.5661976,size.height*0.5025357,size.width*0.5863244,size.height*0.4797979,size.width*0.6294052,size.height*0.4669111);
//     path_0.cubicTo(size.width*0.6339734,size.height*0.4655446,size.width*0.6375525,size.height*0.4629915,size.width*0.6408290,size.height*0.4613666);
//     path_0.cubicTo(size.width*0.6658036,size.height*0.4627600,size.width*0.6616946,size.height*0.4750496,size.width*0.6632714,size.height*0.4835410);
//     path_0.cubicTo(size.width*0.6657110,size.height*0.4966788,size.width*0.6706971,size.height*0.5094380,size.width*0.6752232,size.height*0.5222402);
//     path_0.cubicTo(size.width*0.6814247,size.height*0.5397812,size.width*0.6873572,size.height*0.5572956,size.width*0.6917280,size.height*0.5750588);
//     path_0.cubicTo(size.width*0.6980684,size.height*0.6008267,size.width*0.7012555,size.height*0.6266780,size.width*0.6994844,size.height*0.6526344);
//     path_0.cubicTo(size.width*0.6976691,size.height*0.6792372,size.width*0.6936709,size.height*0.7058011,size.width*0.6774522,size.height*0.7309691);
//     path_0.cubicTo(size.width*0.6744196,size.height*0.7356751,size.width*0.6807137,size.height*0.7384503,size.width*0.6809795,size.height*0.7425618);
//     path_0.cubicTo(size.width*0.6816577,size.height*0.7530503,size.width*0.6846576,size.height*0.7635120,size.width*0.6874231,size.height*0.7739183);
//     path_0.cubicTo(size.width*0.6908423,size.height*0.7867842,size.width*0.6994504,size.height*0.7988917,size.width*0.7026980,size.height*0.8118615);
//     path_0.cubicTo(size.width*0.7072988,size.height*0.8302362,size.width*0.7120373,size.height*0.8482677,size.width*0.7087624,size.height*0.8672097);
//     path_0.cubicTo(size.width*0.7057721,size.height*0.8845048,size.width*0.7033718,size.height*0.9018725,size.width*0.6995996,size.height*0.9191321);
//     path_0.cubicTo(size.width*0.6976770,size.height*0.9279291,size.width*0.6961424,size.height*0.9367873,size.width*0.6947120,size.height*0.9455736);
//     path_0.cubicTo(size.width*0.6922298,size.height*0.9608210,size.width*0.6948976,size.height*0.9761499,size.width*0.7026795,size.height*0.9908861);
//     path_0.cubicTo(size.width*0.7047334,size.height*0.9947757,size.width*0.7077126,size.height*0.9988866,size.width*0.7148760,size.height*1.000825);

// Paint paint_0_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.008264463;
// paint_0_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_0_stroke.strokeCap = StrokeCap.round;
// paint_0_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_0,paint_0_stroke);

// Path path_1 = Path();
//     path_1.moveTo(size.width*0.3553719,size.height*0.4645215);
//     path_1.cubicTo(size.width*0.3474552,size.height*0.4732924,size.width*0.3486592,size.height*0.4832269,size.width*0.3460691,size.height*0.4926078);
//     path_1.cubicTo(size.width*0.3410009,size.height*0.5109648,size.width*0.3321012,size.height*0.5287995,size.width*0.3266977,size.height*0.5470564);
//     path_1.cubicTo(size.width*0.3205648,size.height*0.5677782,size.width*0.3146807,size.height*0.5885081,size.width*0.3134622,size.height*0.6097239);
//     path_1.cubicTo(size.width*0.3127522,size.height*0.6220862,size.width*0.3103150,size.height*0.6345084,size.width*0.3115244,size.height*0.6468566);
//     path_1.cubicTo(size.width*0.3143362,size.height*0.6755647,size.width*0.3177805,size.height*0.7042159,size.width*0.3327318,size.height*0.7319645);
//     path_1.cubicTo(size.width*0.3355544,size.height*0.7372031,size.width*0.3299717,size.height*0.7439257,size.width*0.3293096,size.height*0.7500042);
//     path_1.cubicTo(size.width*0.3268756,size.height*0.7723498,size.width*0.3143473,size.height*0.7934344,size.width*0.3071063,size.height*0.8151748);
//     path_1.cubicTo(size.width*0.2985954,size.height*0.8407276,size.width*0.2993707,size.height*0.8661741,size.width*0.3053940,size.height*0.8919470);
//     path_1.cubicTo(size.width*0.3107589,size.height*0.9149029,size.width*0.3167380,size.height*0.9379513,size.width*0.3165447,size.height*0.9612203);
//     path_1.cubicTo(size.width*0.3164429,size.height*0.9734717,size.width*0.3127919,size.height*0.9855426,size.width*0.3032992,size.height*0.9967812);
//     path_1.cubicTo(size.width*0.3014464,size.height*0.9989746,size.width*0.3007504,size.height*1.000835,size.width*0.2961433,size.height*1.000825);

// Paint paint_1_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.008264463;
// paint_1_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_1_stroke.strokeCap = StrokeCap.round;
// paint_1_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_1,paint_1_stroke);

// Path path_2 = Path();
//     path_2.moveTo(size.width*0.3719008,size.height*0.4801980);
//     path_2.cubicTo(size.width*0.3628791,size.height*0.4885914,size.width*0.3655787,size.height*0.4984841,size.width*0.3643452,size.height*0.5074607);
//     path_2.cubicTo(size.width*0.3608063,size.height*0.5332141,size.width*0.3586783,size.height*0.5590378,size.width*0.3630097,size.height*0.5850210);
//     path_2.cubicTo(size.width*0.3653366,size.height*0.5989791,size.width*0.3671450,size.height*0.6130555,size.width*0.3694189,size.height*0.6270468);
//     path_2.cubicTo(size.width*0.3718888,size.height*0.6422434,size.width*0.3774912,size.height*0.6572593,size.width*0.3798829,size.height*0.6724582);
//     path_2.cubicTo(size.width*0.3822512,size.height*0.6875084,size.width*0.3848630,size.height*0.7026735,size.width*0.3827564,size.height*0.7178136);
//     path_2.cubicTo(size.width*0.3807655,size.height*0.7321224,size.width*0.3574030,size.height*0.7405147,size.width*0.3360882,size.height*0.7351485);

// Paint paint_2_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.008264463;
// paint_2_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_2_stroke.strokeCap = StrokeCap.round;
// paint_2_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_2,paint_2_stroke);

// Path path_3 = Path();
//     path_3.moveTo(size.width*0.6391185,size.height*0.4810231);
//     path_3.cubicTo(size.width*0.6470579,size.height*0.4880584,size.width*0.6452830,size.height*0.4964910,size.width*0.6468693,size.height*0.5041635);
//     path_3.cubicTo(size.width*0.6519010,size.height*0.5285012,size.width*0.6521528,size.height*0.5531501,size.width*0.6495790,size.height*0.5775366);
//     path_3.cubicTo(size.width*0.6466076,size.height*0.6056899,size.width*0.6417183,size.height*0.6338067,size.width*0.6341783,size.height*0.6617713);
//     path_3.cubicTo(size.width*0.6296572,size.height*0.6785390,size.width*0.6261821,size.height*0.6956614,size.width*0.6280294,size.height*0.7128740);
//     path_3.cubicTo(size.width*0.6289918,size.height*0.7218425,size.width*0.6349328,size.height*0.7294551,size.width*0.6461969,size.height*0.7350092);
//     path_3.cubicTo(size.width*0.6548785,size.height*0.7392899,size.width*0.6652893,size.height*0.7386453,size.width*0.6749311,size.height*0.7351485);

// Paint paint_3_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.008264463;
// paint_3_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_3_stroke.strokeCap = StrokeCap.round;
// paint_3_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_3,paint_3_stroke);

// Path path_4 = Path();
//     path_4.moveTo(size.width*0.7093664,size.height*0.2607261);
//     path_4.cubicTo(size.width*0.7123734,size.height*0.2582921,size.width*0.7088165,size.height*0.2568945,size.width*0.7065364,size.height*0.2558335);
//     path_4.cubicTo(size.width*0.6864835,size.height*0.2465024,size.width*0.6703445,size.height*0.2348577,size.width*0.6560437,size.height*0.2226063);
//     path_4.cubicTo(size.width*0.6425430,size.height*0.2110404,size.width*0.6230922,size.height*0.2046737,size.width*0.6045429,size.height*0.1973218);
//     path_4.cubicTo(size.width*0.6009269,size.height*0.1958886,size.width*0.5954204,size.height*0.1962663,size.width*0.5909232,size.height*0.1955142);
//     path_4.cubicTo(size.width*0.5733548,size.height*0.1925764,size.width*0.5676220,size.height*0.1879632,size.width*0.5675224,size.height*0.1765676);
//     path_4.cubicTo(size.width*0.5673999,size.height*0.1625415,size.width*0.5671919,size.height*0.1485111,size.width*0.5676789,size.height*0.1344908);
//     path_4.cubicTo(size.width*0.5678227,size.height*0.1303503,size.width*0.5644116,size.height*0.1263906,size.width*0.5673328,size.height*0.1220733);
//     path_4.cubicTo(size.width*0.5709403,size.height*0.1167414,size.width*0.5681323,size.height*0.1101825,size.width*0.5824259,size.height*0.1076440);
//     path_4.cubicTo(size.width*0.5931530,size.height*0.1057388,size.width*0.5972017,size.height*0.08405745,size.width*0.5878448,size.height*0.07943260);
//     path_4.cubicTo(size.width*0.5736429,size.height*0.07241299,size.width*0.5728999,size.height*0.06300969,size.width*0.5701967,size.height*0.05363566);
//     path_4.cubicTo(size.width*0.5685587,size.height*0.04795560,size.width*0.5664473,size.height*0.04236747,size.width*0.5620892,size.height*0.03709734);
//     path_4.cubicTo(size.width*0.5574606,size.height*0.03150016,size.width*0.5508701,size.height*0.02985505,size.width*0.5413215,size.height*0.03217699);
//     path_4.cubicTo(size.width*0.5254241,size.height*0.03604275,size.width*0.5082231,size.height*0.03589537,size.width*0.4917183,size.height*0.03790309);
//     path_4.cubicTo(size.width*0.4823967,size.height*0.03903703,size.width*0.4732187,size.height*0.03735802,size.width*0.4642165,size.height*0.03622080);
//     path_4.cubicTo(size.width*0.4497620,size.height*0.03439481,size.width*0.4377516,size.height*0.03684764,size.width*0.4358097,size.height*0.04460368);
//     path_4.cubicTo(size.width*0.4336491,size.height*0.05323269,size.width*0.4281723,size.height*0.06192613,size.width*0.4324056,size.height*0.07097410);
//     path_4.cubicTo(size.width*0.4336410,size.height*0.07361454,size.width*0.4318997,size.height*0.07562994,size.width*0.4270403,size.height*0.07679696);
//     path_4.cubicTo(size.width*0.4182460,size.height*0.07890894,size.width*0.4174711,size.height*0.08381982,size.width*0.4189742,size.height*0.08825446);
//     path_4.cubicTo(size.width*0.4216779,size.height*0.09623100,size.width*0.4210120,size.height*0.1044826,size.width*0.4359169,size.height*0.1103898);
//     path_4.cubicTo(size.width*0.4429274,size.height*0.1131683,size.width*0.4465972,size.height*0.1215624,size.width*0.4458208,size.height*0.1295699);
//     path_4.cubicTo(size.width*0.4447089,size.height*0.1410378,size.width*0.4404449,size.height*0.1525011,size.width*0.4432399,size.height*0.1642159);
//     path_4.cubicTo(size.width*0.4454033,size.height*0.1732838,size.width*0.4427239,size.height*0.1824496,size.width*0.4393939,size.height*0.1914191);

// Paint paint_4_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.008264463;
// paint_4_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_4_stroke.strokeCap = StrokeCap.round;
// paint_4_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_4,paint_4_stroke);

// Path path_5 = Path();
//     path_5.moveTo(size.width*0.6887052,size.height*0.2764026);
//     path_5.cubicTo(size.width*0.6735537,size.height*0.2841034,size.width*0.6562721,size.height*0.2907539,size.width*0.6438445,size.height*0.2997977);
//     path_5.cubicTo(size.width*0.6311923,size.height*0.3090052,size.width*0.6161148,size.height*0.3164886,size.width*0.6014029,size.height*0.3238823);
//     path_5.cubicTo(size.width*0.5836441,size.height*0.3328071,size.width*0.5833914,size.height*0.3425154,size.width*0.5881806,size.height*0.3539564);
//     path_5.cubicTo(size.width*0.5894580,size.height*0.3570079,size.width*0.5885230,size.height*0.3604213,size.width*0.5876314,size.height*0.3629707);
//     path_5.cubicTo(size.width*0.5811277,size.height*0.3815663,size.width*0.5826352,size.height*0.4004353,size.width*0.5816014,size.height*0.4191485);
//     path_5.cubicTo(size.width*0.5798644,size.height*0.4505901,size.width*0.5693866,size.height*0.4801708,size.width*0.5370911,size.height*0.5057307);
//     path_5.cubicTo(size.width*0.5149288,size.height*0.5232709,size.width*0.4987432,size.height*0.5276970,size.width*0.4721504,size.height*0.5042480);
//     path_5.cubicTo(size.width*0.4544605,size.height*0.4886496,size.width*0.4424159,size.height*0.4717426,size.width*0.4358167,size.height*0.4537225);
//     path_5.cubicTo(size.width*0.4311197,size.height*0.4408970,size.width*0.4311972,size.height*0.4274069,size.width*0.4298612,size.height*0.4141875);
//     path_5.cubicTo(size.width*0.4285010,size.height*0.4007278,size.width*0.4256489,size.height*0.3872970,size.width*0.4268690,size.height*0.3737582);
//     path_5.cubicTo(size.width*0.4269405,size.height*0.3729651,size.width*0.4251607,size.height*0.3721122,size.width*0.4242424,size.height*0.3712871);

// Paint paint_5_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.008264463;
// paint_5_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_5_stroke.strokeCap = StrokeCap.round;
// paint_5_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_5,paint_5_stroke);

// Path path_6 = Path();
//     path_6.moveTo(size.width*0.6859504,size.height*0.7797030);
//     path_6.cubicTo(size.width*0.6760009,size.height*0.7810066,size.width*0.6719311,size.height*0.7860671,size.width*0.6665471,size.height*0.7903754);
//     path_6.cubicTo(size.width*0.6650692,size.height*0.7915579,size.width*0.6649266,size.height*0.7927060,size.width*0.6653832,size.height*0.7937141);
//     path_6.cubicTo(size.width*0.6759275,size.height*0.8169966,size.width*0.6743952,size.height*0.8409521,size.width*0.6761776,size.height*0.8646900);
//     path_6.cubicTo(size.width*0.6788203,size.height*0.8998837,size.width*0.6805826,size.height*0.9351012,size.width*0.6827021,size.height*0.9700216);
//     path_6.cubicTo(size.width*0.6874164,size.height*0.9726469,size.width*0.6904419,size.height*0.9692685,size.width*0.6942149,size.height*0.9694719);

// Paint paint_6_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.01101928;
// paint_6_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_6_stroke.strokeCap = StrokeCap.round;
// paint_6_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_6,paint_6_stroke);

// Path path_7 = Path();
//     path_7.moveTo(size.width*0.3250689,size.height*0.7797030);
//     path_7.cubicTo(size.width*0.3344776,size.height*0.7807710,size.width*0.3374873,size.height*0.7859784,size.width*0.3430389,size.height*0.7895687);
//     path_7.cubicTo(size.width*0.3455391,size.height*0.7911857,size.width*0.3449267,size.height*0.7931843,size.width*0.3441596,size.height*0.7945145);
//     path_7.cubicTo(size.width*0.3363927,size.height*0.8079847,size.width*0.3399351,size.height*0.8220748,size.width*0.3377960,size.height*0.8358270);
//     path_7.cubicTo(size.width*0.3313544,size.height*0.8772391,size.width*0.3328679,size.height*0.9188885,size.width*0.3292392,size.height*0.9603972);
//     path_7.cubicTo(size.width*0.3289504,size.height*0.9636999,size.width*0.3292011,size.height*0.9670194,size.width*0.3292011,size.height*0.9695294);
//     path_7.cubicTo(size.width*0.3236028,size.height*0.9726469,size.width*0.3205774,size.height*0.9692685,size.width*0.3168044,size.height*0.9694719);

// Paint paint_7_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.01101928;
// paint_7_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_7_stroke.strokeCap = StrokeCap.round;
// paint_7_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_7,paint_7_stroke);

// Path path_8 = Path();
//     path_8.moveTo(size.width*0.3815427,size.height*0.8036304);
//     path_8.cubicTo(size.width*0.3801249,size.height*0.8152959,size.width*0.3765549,size.height*0.8267778,size.width*0.3738097,size.height*0.8383292);
//     path_8.cubicTo(size.width*0.3714760,size.height*0.8481489,size.width*0.3700732,size.height*0.8581192,size.width*0.3677373,size.height*0.8679842);
//     path_8.cubicTo(size.width*0.3648739,size.height*0.8800769,size.width*0.3629022,size.height*0.8922303,size.width*0.3598822,size.height*0.9043243);
//     path_8.cubicTo(size.width*0.3564161,size.height*0.9182047,size.width*0.3559160,size.height*0.9323475,size.width*0.3539628,size.height*0.9463680);
//     path_8.cubicTo(size.width*0.3527763,size.height*0.9548855,size.width*0.3500095,size.height*0.9633383,size.width*0.3512397,size.height*0.9719472);

// Paint paint_8_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.01101928;
// paint_8_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_8_stroke.strokeCap = StrokeCap.round;
// paint_8_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_8,paint_8_stroke);

// Path path_9 = Path();
//     path_9.moveTo(size.width*0.6294766,size.height*0.8036304);
//     path_9.cubicTo(size.width*0.6326906,size.height*0.8195819,size.width*0.6351156,size.height*0.8356091,size.width*0.6393438,size.height*0.8514636);
//     path_9.cubicTo(size.width*0.6434443,size.height*0.8668391,size.width*0.6450309,size.height*0.8823845,size.width*0.6498039,size.height*0.8977270);
//     path_9.cubicTo(size.width*0.6533384,size.height*0.9090886,size.width*0.6526255,size.height*0.9209180,size.width*0.6559959,size.height*0.9323063);
//     path_9.cubicTo(size.width*0.6590864,size.height*0.9427490,size.width*0.6561819,size.height*0.9534130,size.width*0.6609463,size.height*0.9637313);
//     path_9.cubicTo(size.width*0.6621139,size.height*0.9662599,size.width*0.6619870,size.height*0.9693016,size.width*0.6597796,size.height*0.9719472);

// Paint paint_9_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.008264463;
// paint_9_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_9_stroke.strokeCap = StrokeCap.round;
// paint_9_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_9,paint_9_stroke);

// Path path_10 = Path();
//     path_10.moveTo(size.width*0.4090909,size.height*0.7945545);
//     path_10.cubicTo(size.width*0.4113866,size.height*0.8124313,size.width*0.4132414,size.height*0.8303336,size.width*0.4161297,size.height*0.8481761);
//     path_10.cubicTo(size.width*0.4181263,size.height*0.8605100,size.width*0.4126024,size.height*0.8716699,size.width*0.4050775,size.height*0.8828670);
//     path_10.cubicTo(size.width*0.3908265,size.height*0.9040726,size.width*0.3818262,size.height*0.9260921,size.width*0.3771805,size.height*0.9488281);
//     path_10.cubicTo(size.width*0.3752491,size.height*0.9582806,size.width*0.3722307,size.height*0.9674578,size.width*0.3772245,size.height*0.9769328);
//     path_10.cubicTo(size.width*0.3799795,size.height*0.9821600,size.width*0.3724446,size.height*0.9865626,size.width*0.3715291,size.height*0.9917255);
//     path_10.cubicTo(size.width*0.3710404,size.height*0.9944819,size.width*0.3679286,size.height*0.9970668,size.width*0.3705234,size.height);

// Paint paint_10_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.008264463;
// paint_10_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_10_stroke.strokeCap = StrokeCap.round;
// paint_10_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_10,paint_10_stroke);

// Path path_11 = Path();
//     path_11.moveTo(size.width*0.6969697,size.height*0.3143564);
//     path_11.cubicTo(size.width*0.6882461,size.height*0.3272827,size.width*0.6800777,size.height*0.3403569,size.width*0.6706271,size.height*0.3530896);
//     path_11.cubicTo(size.width*0.6627500,size.height*0.3637024,size.width*0.6531325,size.height*0.3738927,size.width*0.6488635,size.height*0.3853274);
//     path_11.cubicTo(size.width*0.6455170,size.height*0.3942913,size.width*0.6455081,size.height*0.4037228,size.width*0.6479504,size.height*0.4124845);
//     path_11.cubicTo(size.width*0.6520852,size.height*0.4273183,size.width*0.6523548,size.height*0.4424194,size.width*0.6577556,size.height*0.4571806);
//     path_11.cubicTo(size.width*0.6589525,size.height*0.4604519,size.width*0.6529827,size.height*0.4652810,size.width*0.6485870,size.height*0.4685636);
//     path_11.cubicTo(size.width*0.6287684,size.height*0.4833637,size.width*0.6215200,size.height*0.5009203,size.width*0.6155785,size.height*0.5189622);
//     path_11.cubicTo(size.width*0.6091027,size.height*0.5386265,size.width*0.6058202,size.height*0.5585681,size.width*0.6025106,size.height*0.5784177);
//     path_11.cubicTo(size.width*0.5995789,size.height*0.5960001,size.width*0.5910568,size.height*0.6128671,size.width*0.5879377,size.height*0.6303492);
//     path_11.cubicTo(size.width*0.5872538,size.height*0.6341828,size.width*0.5844231,size.height*0.6379724,size.width*0.5799158,size.height*0.6411026);
//     path_11.cubicTo(size.width*0.5668173,size.height*0.6501992,size.width*0.5581510,size.height*0.6608938,size.width*0.5495868,size.height*0.6716172);

// Paint paint_11_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.008264463;
// paint_11_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_11_stroke.strokeCap = StrokeCap.round;
// paint_11_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_11,paint_11_stroke);

// Path path_12 = Path();
//     path_12.moveTo(size.width*0.3154270,size.height*0.3151815);
//     path_12.cubicTo(size.width*0.3227796,size.height*0.3213628,size.width*0.3224174,size.height*0.3291656,size.width*0.3276884,size.height*0.3358469);
//     path_12.cubicTo(size.width*0.3373462,size.height*0.3480886,size.width*0.3457113,size.height*0.3606987,size.width*0.3555044,size.height*0.3728991);
//     path_12.cubicTo(size.width*0.3655890,size.height*0.3854629,size.width*0.3643371,size.height*0.3984655,size.width*0.3623646,size.height*0.4117218);
//     path_12.cubicTo(size.width*0.3602349,size.height*0.4260348,size.width*0.3551848,size.height*0.4401803,size.width*0.3554310,size.height*0.4546201);
//     path_12.cubicTo(size.width*0.3554780,size.height*0.4573729,size.width*0.3562902,size.height*0.4601210,size.width*0.3567493,size.height*0.4628713);

// Paint paint_12_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.008264463;
// paint_12_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_12_stroke.strokeCap = StrokeCap.round;
// paint_12_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_12,paint_12_stroke);

// Path path_13 = Path();
//     path_13.moveTo(size.width*0.4256198,size.height*0.3052805);
//     path_13.cubicTo(size.width*0.4145836,size.height*0.3139891,size.width*0.4182536,size.height*0.3232562,size.width*0.4229083,size.height*0.3325004);
//     path_13.cubicTo(size.width*0.4256377,size.height*0.3379211,size.width*0.4269271,size.height*0.3431320,size.width*0.4260034,size.height*0.3490315);
//     path_13.cubicTo(size.width*0.4229014,size.height*0.3688420,size.width*0.4113288,size.height*0.3881766,size.width*0.4160408,size.height*0.4084106);
//     path_13.cubicTo(size.width*0.4183180,size.height*0.4181889,size.width*0.4182339,size.height*0.4277320,size.width*0.4133619,size.height*0.4373191);
//     path_13.cubicTo(size.width*0.4081097,size.height*0.4476545,size.width*0.3985392,size.height*0.4553949,size.width*0.3815775,size.height*0.4596210);
//     path_13.cubicTo(size.width*0.3785777,size.height*0.4603684,size.width*0.3760331,size.height*0.4617712,size.width*0.3732782,size.height*0.4628713);

// Paint paint_13_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.008264463;
// paint_13_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_13_stroke.strokeCap = StrokeCap.round;
// paint_13_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_13,paint_13_stroke);

// Path path_14 = Path();
//     path_14.moveTo(size.width*0.9242424,size.height*0.4810231);
//     path_14.cubicTo(size.width*0.9174522,size.height*0.4891486,size.width*0.9159791,size.height*0.4964467,size.width*0.9248447,size.height*0.5052312);
//     path_14.cubicTo(size.width*0.9303081,size.height*0.5106447,size.width*0.9315682,size.height*0.5184382,size.width*0.9312365,size.height*0.5255793);
//     path_14.cubicTo(size.width*0.9308572,size.height*0.5337500,size.width*0.9367821,size.height*0.5404290,size.width*0.9435262,size.height*0.5404290);
//     path_14.cubicTo(size.width*0.9502271,size.height*0.5404290,size.width*0.9555133,size.height*0.5340859,size.width*0.9559286,size.height*0.5255777);
//     path_14.cubicTo(size.width*0.9560371,size.height*0.5233533,size.width*0.9551199,size.height*0.5210482,size.width*0.9587004,size.height*0.5188890);
//     path_14.cubicTo(size.width*0.9679663,size.height*0.5211758,size.width*0.9685908,size.height*0.5288221,size.width*0.9685234,size.height*0.5321698);
//     path_14.cubicTo(size.width*0.9683514,size.height*0.5407210,size.width*0.9716129,size.height*0.5492001,size.width*0.9698860,size.height*0.5577694);
//     path_14.cubicTo(size.width*0.9691205,size.height*0.5615678,size.width*0.9830757,size.height*0.5704380,size.width*0.9889716,size.height*0.5709920);
//     path_14.cubicTo(size.width*0.9926793,size.height*0.5713403,size.width*0.9951580,size.height*0.5703618,size.width*0.9957465,size.height*0.5684683);
//     path_14.cubicTo(size.width*0.9970602,size.height*0.5642407,size.width*1.001919,size.height*0.5608259,size.width*1.001599,size.height*0.5561002);
//     path_14.cubicTo(size.width*1.000680,size.height*0.5425166,size.width*1.003686,size.height*0.5287612,size.width*0.9945315,size.height*0.5156662);
//     path_14.cubicTo(size.width*0.9837957,size.height*0.5003088,size.width*0.9725247,size.height*0.4850578,size.width*0.9630294,size.height*0.4694241);
//     path_14.cubicTo(size.width*0.9518137,size.height*0.4509575,size.width*0.9372206,size.height*0.4333551,size.width*0.9257169,size.height*0.4149947);
//     path_14.cubicTo(size.width*0.9090823,size.height*0.3884452,size.width*0.8865791,size.height*0.3641011,size.width*0.8523893,size.height*0.3441998);
//     path_14.cubicTo(size.width*0.8467769,size.height*0.3409329,size.width*0.8450075,size.height*0.3354163,size.width*0.8360882,size.height*0.3341584);

// Paint paint_14_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.008264463;
// paint_14_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_14_stroke.strokeCap = StrokeCap.round;
// paint_14_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_14,paint_14_stroke);

// Path path_15 = Path();
//     path_15.moveTo(size.width*0.4090909,size.height*0.1963696);
//     path_15.cubicTo(size.width*0.3796562,size.height*0.2063118,size.width*0.3572903,size.height*0.2206153,size.width*0.3371909,size.height*0.2366753);
//     path_15.cubicTo(size.width*0.3257523,size.height*0.2458152,size.width*0.3100560,size.height*0.2528176,size.width*0.2971732,size.height*0.2613632);
//     path_15.cubicTo(size.width*0.2907527,size.height*0.2656221,size.width*0.2792830,size.height*0.2659400,size.width*0.2699511,size.height*0.2663072);
//     path_15.cubicTo(size.width*0.2383920,size.height*0.2675492,size.width*0.2180139,size.height*0.2777499,size.width*0.2038344,size.height*0.2937222);
//     path_15.cubicTo(size.width*0.1937368,size.height*0.3050966,size.width*0.1844751,size.height*0.3166482,size.width*0.1788873,size.height*0.3291797);
//     path_15.cubicTo(size.width*0.1778187,size.height*0.3315763,size.width*0.1751560,size.height*0.3340577,size.width*0.1720737,size.height*0.3357412);
//     path_15.cubicTo(size.width*0.1259499,size.height*0.3609333,size.width*0.09958874,size.height*0.3931700,size.width*0.07650537,size.height*0.4272397);
//     path_15.cubicTo(size.width*0.05779193,size.height*0.4548596,size.width*0.04063625,size.height*0.4828861,size.width*0.01976122,size.height*0.5100327);
//     path_15.cubicTo(size.width*0.006167477,size.height*0.5277105,size.width*0.008579733,size.height*0.5471020,size.width*0.01397088,size.height*0.5659865);
//     path_15.cubicTo(size.width*0.01561328,size.height*0.5717395,size.width*0.02170093,size.height*0.5721470,size.width*0.02905132,size.height*0.5685747);
//     path_15.cubicTo(size.width*0.03952235,size.height*0.5634856,size.width*0.04372908,size.height*0.5573529,size.width*0.04131235,size.height*0.5495061);
//     path_15.cubicTo(size.width*0.03951150,size.height*0.5436590,size.width*0.04707679,size.height*0.5380917,size.width*0.04269972,size.height*0.5321782);

// Paint paint_15_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.008264463;
// paint_15_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_15_stroke.strokeCap = StrokeCap.round;
// paint_15_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_15,paint_15_stroke);

// Path path_16 = Path();
//     path_16.moveTo(size.width*0.5771350,size.height*0.06930693);
//     path_16.cubicTo(size.width*0.5946344,size.height*0.04390250,size.width*0.5792736,size.height*0.01877303,size.width*0.5386192,size.height*0.009816724);
//     path_16.cubicTo(size.width*0.5062231,size.height*0.002679748,size.width*0.4742844,size.height*0.001974982,size.width*0.4421576,size.height*0.009913873);
//     path_16.cubicTo(size.width*0.4400086,size.height*0.01044493,size.width*0.4369149,size.height*0.01024804,size.width*0.4366263,size.height*0.01237562);
//     path_16.cubicTo(size.width*0.4352466,size.height*0.02254773,size.width*0.4234095,size.height*0.03071496,size.width*0.4223353,size.height*0.04123471);
//     path_16.cubicTo(size.width*0.4215071,size.height*0.04934491,size.width*0.4223778,size.height*0.05686374,size.width*0.4269972,size.height*0.06435644);

// Paint paint_16_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.008264463;
// paint_16_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_16_stroke.strokeCap = StrokeCap.round;
// paint_16_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_16,paint_16_stroke);

// Path path_17 = Path();
//     path_17.moveTo(size.width*0.7754821,size.height*0.3688119);
//     path_17.cubicTo(size.width*0.7791577,size.height*0.3770724,size.width*0.7899293,size.height*0.3828507,size.width*0.7963051,size.height*0.3902137);
//     path_17.cubicTo(size.width*0.8150965,size.height*0.4119148,size.width*0.8370429,size.height*0.4322993,size.width*0.8691567,size.height*0.4480119);
//     path_17.cubicTo(size.width*0.8880946,size.height*0.4572779,size.width*0.9074754,size.height*0.4661472,size.width*0.9217762,size.height*0.4784272);
//     path_17.cubicTo(size.width*0.9272009,size.height*0.4830854,size.width*0.9482130,size.height*0.4792855,size.width*0.9557903,size.height*0.4727174);
//     path_17.cubicTo(size.width*0.9574061,size.height*0.4713167,size.width*0.9584657,size.height*0.4698951,size.width*0.9614325,size.height*0.4694719);

// Paint paint_17_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.008264463;
// paint_17_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_17_stroke.strokeCap = StrokeCap.round;
// paint_17_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_17,paint_17_stroke);

// Path path_18 = Path();
//     path_18.moveTo(size.width*0.6046832,size.height*0.7953795);
//     path_18.cubicTo(size.width*0.5967735,size.height*0.8036550,size.width*0.6011765,size.height*0.8130324,size.width*0.5983782,size.height*0.8218485);
//     path_18.cubicTo(size.width*0.5941897,size.height*0.8350445,size.width*0.5942458,size.height*0.8486803,size.width*0.5948516,size.height*0.8622142);
//     path_18.cubicTo(size.width*0.5950370,size.height*0.8663550,size.width*0.5964829,size.height*0.8702123,size.width*0.5993090,size.height*0.8737233);
//     path_18.cubicTo(size.width*0.6155600,size.height*0.8939126,size.width*0.6245725,size.height*0.9153381,size.width*0.6309176,size.height*0.9372872);
//     path_18.cubicTo(size.width*0.6347899,size.height*0.9506828,size.width*0.6380832,size.height*0.9641257,size.width*0.6361627,size.height*0.9777126);
//     path_18.cubicTo(size.width*0.6350171,size.height*0.9858178,size.width*0.6424654,size.height*0.9929165,size.width*0.6418733,size.height*1.000825);

// Paint paint_18_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.008264463;
// paint_18_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_18_stroke.strokeCap = StrokeCap.round;
// paint_18_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_18,paint_18_stroke);

// Path path_19 = Path();
//     path_19.moveTo(size.width*0.2327824,size.height*0.3704620);
//     path_19.cubicTo(size.width*0.2153607,size.height*0.3903832,size.width*0.1992789,size.height*0.4109428,size.width*0.1745897,size.height*0.4280409);
//     path_19.cubicTo(size.width*0.1576387,size.height*0.4397801,size.width*0.1389314,size.height*0.4507323,size.width*0.1172574,size.height*0.4597245);
//     path_19.cubicTo(size.width*0.1059687,size.height*0.4644080,size.width*0.09824642,size.height*0.4715363,size.width*0.09090909,size.height*0.4785479);

// Paint paint_19_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.008264463;
// paint_19_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_19_stroke.strokeCap = StrokeCap.round;
// paint_19_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_19,paint_19_stroke);

// Path path_20 = Path();
//     path_20.moveTo(size.width*0.1831956,size.height*0.3679868);
//     path_20.cubicTo(size.width*0.1408398,size.height*0.4012322,size.width*0.1032060,size.height*0.4362687,size.width*0.07169614,size.height*0.4736188);
//     path_20.cubicTo(size.width*0.07067863,size.height*0.4748249,size.width*0.07070706,size.height*0.4763476,size.width*0.07024793,size.height*0.4777228);

// Paint paint_20_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.008264463;
// paint_20_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_20_stroke.strokeCap = StrokeCap.round;
// paint_20_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_20,paint_20_stroke);

// Path path_21 = Path();
//     path_21.moveTo(size.width*0.8278237,size.height*0.3679868);
//     path_21.cubicTo(size.width*0.8708239,size.height*0.4009880,size.width*0.9082641,size.height*0.4360979,size.width*0.9393248,size.height*0.4736179);
//     path_21.cubicTo(size.width*0.9403291,size.height*0.4748311,size.width*0.9403122,size.height*0.4763476,size.width*0.9407713,size.height*0.4777228);

// Paint paint_21_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.008264463;
// paint_21_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_21_stroke.strokeCap = StrokeCap.round;
// paint_21_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_21,paint_21_stroke);

// Path path_22 = Path();
//     path_22.moveTo(size.width*0.4256198,size.height*0.6386139);
//     path_22.cubicTo(size.width*0.4258599,size.height*0.6402665,size.width*0.4222997,size.height*0.6407737,size.width*0.4227551,size.height*0.6427484);
//     path_22.cubicTo(size.width*0.4290166,size.height*0.6698999,size.width*0.4239361,size.height*0.6972048,size.width*0.4256722,size.height*0.7244212);
//     path_22.cubicTo(size.width*0.4261303,size.height*0.7316025,size.width*0.4269883,size.height*0.7388173,size.width*0.4366391,size.height*0.7442244);

// Paint paint_22_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.01101928;
// paint_22_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_22_stroke.strokeCap = StrokeCap.round;
// paint_22_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_22,paint_22_stroke);

// Path path_23 = Path();
//     path_23.moveTo(size.width*0.5055096,size.height*0.2070957);
//     path_23.cubicTo(size.width*0.4972857,size.height*0.2044444,size.width*0.4931547,size.height*0.1989641,size.width*0.4832910,size.height*0.1963548);
//     path_23.cubicTo(size.width*0.4608180,size.height*0.2033808,size.width*0.4394176,size.height*0.2127904,size.width*0.4187841,size.height*0.2228102);
//     path_23.cubicTo(size.width*0.3869057,size.height*0.2382907,size.width*0.3539029,size.height*0.2525580,size.width*0.3140236,size.height*0.2598501);
//     path_23.cubicTo(size.width*0.3098734,size.height*0.2606090,size.width*0.3057504,size.height*0.2628665,size.width*0.3009642,size.height*0.2607261);

// Paint paint_23_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.008264463;
// paint_23_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_23_stroke.strokeCap = StrokeCap.round;
// paint_23_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_23,paint_23_stroke);

// Path path_24 = Path();
//     path_24.moveTo(size.width*0.5840220,size.height*0.6394389);
//     path_24.cubicTo(size.width*0.5888114,size.height*0.6429581,size.width*0.5870194,size.height*0.6471644,size.width*0.5866140,size.height*0.6509839);
//     path_24.cubicTo(size.width*0.5839869,size.height*0.6757319,size.width*0.5862786,size.height*0.7004990,size.width*0.5852998,size.height*0.7252461);
//     path_24.cubicTo(size.width*0.5850266,size.height*0.7321532,size.width*0.5835981,size.height*0.7390541,size.width*0.5743802,size.height*0.7442244);

// Paint paint_24_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.01101928;
// paint_24_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_24_stroke.strokeCap = StrokeCap.round;
// paint_24_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_24,paint_24_stroke);

// Path path_25 = Path();
//     path_25.moveTo(size.width*0.7134986,size.height*0.2640264);
//     path_25.cubicTo(size.width*0.7080407,size.height*0.2694406,size.width*0.6967652,size.height*0.2702976,size.width*0.6899700,size.height*0.2748399);
//     path_25.cubicTo(size.width*0.6903813,size.height*0.2786029,size.width*0.6914238,size.height*0.2822996,size.width*0.6904056,size.height*0.2863329);
//     path_25.cubicTo(size.width*0.6875279,size.height*0.2977322,size.width*0.6907455,size.height*0.3090791,size.width*0.7041469,size.height*0.3174909);
//     path_25.cubicTo(size.width*0.7261052,size.height*0.3312737,size.width*0.7443732,size.height*0.3467572,size.width*0.7643351,size.height*0.3614484);
//     path_25.cubicTo(size.width*0.7773429,size.height*0.3710216,size.width*0.8073389,size.height*0.3751711,size.width*0.8233797,size.height*0.3677452);
//     path_25.cubicTo(size.width*0.8310833,size.height*0.3641790,size.width*0.8339502,size.height*0.3579188,size.width*0.8349406,size.height*0.3514979);
//     path_25.cubicTo(size.width*0.8384750,size.height*0.3285804,size.width*0.8236129,size.height*0.3084323,size.width*0.8034182,size.height*0.2908365);
//     path_25.cubicTo(size.width*0.7873998,size.height*0.2768797,size.width*0.7771057,size.height*0.2623152,size.width*0.7684858,size.height*0.2467213);
//     path_25.cubicTo(size.width*0.7619422,size.height*0.2348837,size.width*0.7557437,size.height*0.2228414,size.width*0.7423889,size.height*0.2128883);
//     path_25.cubicTo(size.width*0.7229818,size.height*0.1984244,size.width*0.6973713,size.height*0.1919349,size.width*0.6666667,size.height*0.1922442);

// Paint paint_25_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.008264463;
// paint_25_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_25_stroke.strokeCap = StrokeCap.round;
// paint_25_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_25,paint_25_stroke);

// Path path_26 = Path();
//     path_26.moveTo(size.width*0.3223140,size.height*0.2764026);
//     path_26.cubicTo(size.width*0.3371339,size.height*0.2806719,size.width*0.3448175,size.height*0.2898874,size.width*0.3592035,size.height*0.2948662);
//     path_26.cubicTo(size.width*0.3717065,size.height*0.2991934,size.width*0.3845516,size.height*0.3006881,size.width*0.3980609,size.height*0.3020191);
//     path_26.cubicTo(size.width*0.4072290,size.height*0.3029224,size.width*0.4164488,size.height*0.3004037,size.width*0.4260381,size.height*0.3040620);
//     path_26.cubicTo(size.width*0.4312055,size.height*0.3060334,size.width*0.4390453,size.height*0.3012910,size.width*0.4461873,size.height*0.3001243);
//     path_26.cubicTo(size.width*0.4744042,size.height*0.2955149,size.width*0.4909794,size.height*0.2828401,size.width*0.5041576,size.height*0.2681600);
//     path_26.cubicTo(size.width*0.5060323,size.height*0.2660715,size.width*0.5076851,size.height*0.2638051,size.width*0.5067751,size.height*0.2615675);
//     path_26.cubicTo(size.width*0.5009934,size.height*0.2473511,size.width*0.5052746,size.height*0.2329429,size.width*0.5043822,size.height*0.2186413);
//     path_26.cubicTo(size.width*0.5041271,size.height*0.2145524,size.width*0.5053866,size.height*0.2099159,size.width*0.5085545,size.height*0.2063635);
//     path_26.cubicTo(size.width*0.5170038,size.height*0.1968888,size.width*0.5275365,size.height*0.1956255,size.width*0.5426970,size.height*0.2013227);
//     path_26.cubicTo(size.width*0.5689108,size.height*0.2111737,size.width*0.5926216,size.height*0.2230512,size.width*0.6170806,size.height*0.2343229);
//     path_26.cubicTo(size.width*0.6471936,size.height*0.2482003,size.width*0.6807515,size.height*0.2577592,size.width*0.7176128,size.height*0.2632449);
//     path_26.cubicTo(size.width*0.7223361,size.height*0.2639478,size.width*0.7268136,size.height*0.2644479,size.width*0.7315116,size.height*0.2630166);
//     path_26.cubicTo(size.width*0.7288318,size.height*0.2439472,size.width*0.7188113,size.height*0.2264995,size.width*0.6985239,size.height*0.2111373);
//     path_26.cubicTo(size.width*0.6877926,size.height*0.2030113,size.width*0.6723597,size.height*0.1983073,size.width*0.6608799,size.height*0.1907450);
//     path_26.cubicTo(size.width*0.6554014,size.height*0.1871361,size.width*0.6461993,size.height*0.1891754,size.width*0.6391767,size.height*0.1899567);
//     path_26.cubicTo(size.width*0.6265112,size.height*0.1913658,size.width*0.6121009,size.height*0.1896730,size.width*0.6019284,size.height*0.1963696);

// Paint paint_26_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.008264463;
// paint_26_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_26_stroke.strokeCap = StrokeCap.round;
// paint_26_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_26,paint_26_stroke);

// Path path_27 = Path();
//     path_27.moveTo(size.width*0.4779614,size.height*0.1971947);
//     path_27.cubicTo(size.width*0.4624333,size.height*0.1925842,size.width*0.4461253,size.height*0.1900462,size.width*0.4298860,size.height*0.1948809);
//     path_27.cubicTo(size.width*0.4174898,size.height*0.1985714,size.width*0.4072783,size.height*0.1944927,size.width*0.3968141,size.height*0.1928028);
//     path_27.cubicTo(size.width*0.3849038,size.height*0.1908795,size.width*0.3727165,size.height*0.1906391,size.width*0.3608784,size.height*0.1889518);
//     path_27.cubicTo(size.width*0.3604439,size.height*0.1888898,size.width*0.3598584,size.height*0.1888382,size.width*0.3595191,size.height*0.1889590);
//     path_27.cubicTo(size.width*0.3421065,size.height*0.1951577,size.width*0.3213043,size.height*0.1922201,size.width*0.3026519,size.height*0.1975441);
//     path_27.cubicTo(size.width*0.2759784,size.height*0.2051575,size.width*0.2612977,size.height*0.2176427,size.width*0.2509412,size.height*0.2327354);
//     path_27.cubicTo(size.width*0.2432315,size.height*0.2439710,size.width*0.2377049,size.height*0.2557513,size.width*0.2315699,size.height*0.2673580);
//     path_27.cubicTo(size.width*0.2308190,size.height*0.2687787,size.width*0.2323232,size.height*0.2706271,size.width*0.2327824,size.height*0.2722772);

// Paint paint_27_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.008264463;
// paint_27_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_27_stroke.strokeCap = StrokeCap.round;
// paint_27_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_27,paint_27_stroke);

// Path path_28 = Path();
//     path_28.moveTo(size.width*0.5895317,size.height*0.3663366);
//     path_28.cubicTo(size.width*0.5937700,size.height*0.3724121,size.width*0.5943034,size.height*0.3789647,size.width*0.5947850,size.height*0.3853205);
//     path_28.cubicTo(size.width*0.5956794,size.height*0.3971224,size.width*0.5958162,size.height*0.4089882,size.width*0.5948678,size.height*0.4207871);
//     path_28.cubicTo(size.width*0.5932694,size.height*0.4406716,size.width*0.6062190,size.height*0.4547156,size.width*0.6377410,size.height*0.4620462);

// Paint paint_28_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.008264463;
// paint_28_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_28_stroke.strokeCap = StrokeCap.round;
// paint_28_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_28,paint_28_stroke);

// Path path_29 = Path();
//     path_29.moveTo(size.width*0.5702479,size.height*0.7433993);
//     path_29.cubicTo(size.width*0.5644360,size.height*0.7326545,size.width*0.5621058,size.height*0.7214473,size.width*0.5595555,size.height*0.7103690);
//     path_29.cubicTo(size.width*0.5567564,size.height*0.6982101,size.width*0.5549797,size.height*0.6851361,size.width*0.5480614,size.height*0.6744466);
//     path_29.cubicTo(size.width*0.5388084,size.height*0.6601501,size.width*0.5305631,size.height*0.6456279,size.width*0.5222043,size.height*0.6311538);
//     path_29.cubicTo(size.width*0.5142217,size.height*0.6173311,size.width*0.5087248,size.height*0.6031231,size.width*0.5095412,size.height*0.5882819);
//     path_29.cubicTo(size.width*0.5097000,size.height*0.5853950,size.width*0.5115082,size.height*0.5819528,size.width*0.5062283,size.height*0.5799476);
//     path_29.cubicTo(size.width*0.5007367,size.height*0.5806662,size.width*0.5013220,size.height*0.5829400,size.width*0.5013948,size.height*0.5849833);
//     path_29.cubicTo(size.width*0.5022964,size.height*0.6103033,size.width*0.4886254,size.height*0.6335880,size.width*0.4740287,size.height*0.6568107);
//     path_29.cubicTo(size.width*0.4706715,size.height*0.6621520,size.width*0.4707964,size.height*0.6683046,size.width*0.4628099,size.height*0.6724422);

// Paint paint_29_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.008264463;
// paint_29_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_29_stroke.strokeCap = StrokeCap.round;
// paint_29_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_29,paint_29_stroke);

// Path path_30 = Path();
//     path_30.moveTo(size.width*0.04958678,size.height*0.4694719);
//     path_30.cubicTo(size.width*0.05747919,size.height*0.4709940,size.width*0.05983270,size.height*0.4764136,size.width*0.06860548,size.height*0.4781919);
//     path_30.cubicTo(size.width*0.07511158,size.height*0.4795108,size.width*0.08042440,size.height*0.4803168,size.width*0.08672410,size.height*0.4792650);
//     path_30.cubicTo(size.width*0.09303192,size.height*0.4885707,size.width*0.09523856,size.height*0.4974652,size.width*0.08564958,size.height*0.5066939);
//     path_30.cubicTo(size.width*0.08015536,size.height*0.5119817,size.width*0.07923070,size.height*0.5184188,size.width*0.07986002,size.height*0.5247535);
//     path_30.cubicTo(size.width*0.08022489,size.height*0.5284262,size.width*0.07937364,size.height*0.5319449,size.width*0.07734991,size.height*0.5355222);
//     path_30.cubicTo(size.width*0.07553898,size.height*0.5387232,size.width*0.07262885,size.height*0.5396668,size.width*0.06749275,size.height*0.5396533);
//     path_30.cubicTo(size.width*0.06252756,size.height*0.5396403,size.width*0.06084681,size.height*0.5383635,size.width*0.05888674,size.height*0.5355645);
//     path_30.cubicTo(size.width*0.05582879,size.height*0.5311977,size.width*0.05760045,size.height*0.5258058,size.width*0.05096419,size.height*0.5222772);

// Paint paint_30_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.008264463;
// paint_30_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_30_stroke.strokeCap = StrokeCap.round;
// paint_30_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_30,paint_30_stroke);

// Path path_31 = Path();
//     path_31.moveTo(size.width*0.7796143,size.height*0.2714521);
//     path_31.cubicTo(size.width*0.7691137,size.height*0.2732347,size.width*0.7606975,size.height*0.2686352,size.width*0.7524473,size.height*0.2667334);
//     path_31.cubicTo(size.width*0.7395427,size.height*0.2637587,size.width*0.7401738,size.height*0.2680071,size.width*0.7383116,size.height*0.2722803);
//     path_31.cubicTo(size.width*0.7334177,size.height*0.2835106,size.width*0.7429692,size.height*0.2924456,size.width*0.7522253,size.height*0.3010940);
//     path_31.cubicTo(size.width*0.7663098,size.height*0.3142538,size.width*0.7812711,size.height*0.3270828,size.width*0.7962059,size.height*0.3399078);
//     path_31.cubicTo(size.width*0.8063311,size.height*0.3486027,size.width*0.8158500,size.height*0.3574091,size.width*0.8195592,size.height*0.3679868);

// Paint paint_31_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.008264463;
// paint_31_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_31_stroke.strokeCap = StrokeCap.round;
// paint_31_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_31,paint_31_stroke);

// Path path_32 = Path();
//     path_32.moveTo(size.width*0.1749311,size.height*0.3366337);
//     path_32.cubicTo(size.width*0.1789345,size.height*0.3438846,size.width*0.1742574,size.height*0.3515419,size.width*0.1787877,size.height*0.3589712);
//     path_32.cubicTo(size.width*0.1849033,size.height*0.3690005,size.width*0.2038630,size.height*0.3742748,size.width*0.2204966,size.height*0.3715281);
//     path_32.cubicTo(size.width*0.2421906,size.height*0.3679459,size.width*0.2513284,size.height*0.3568869,size.width*0.2643487,size.height*0.3481240);
//     path_32.cubicTo(size.width*0.2790767,size.height*0.3382118,size.width*0.2927913,size.height*0.3277621,size.width*0.3072002,size.height*0.3176761);
//     path_32.cubicTo(size.width*0.3224963,size.height*0.3069691,size.width*0.3229342,size.height*0.2943486,size.width*0.3208893,size.height*0.2813558);
//     path_32.cubicTo(size.width*0.3207995,size.height*0.2807849,size.width*0.3197734,size.height*0.2802799,size.width*0.3195956,size.height*0.2796990);
//     path_32.cubicTo(size.width*0.3163989,size.height*0.2692503,size.width*0.3064048,size.height*0.2664957,size.width*0.2935553,size.height*0.2732168);
//     path_32.cubicTo(size.width*0.2832551,size.height*0.2786044,size.width*0.2733999,size.height*0.2842585,size.width*0.2669822,size.height*0.2920093);
//     path_32.cubicTo(size.width*0.2506802,size.height*0.3116971,size.width*0.2275619,size.height*0.3288691,size.width*0.2077141,size.height*0.3472533);
//     path_32.cubicTo(size.width*0.2006033,size.height*0.3538397,size.width*0.1967426,size.height*0.3610458,size.width*0.1914601,size.height*0.3679868);

// Paint paint_32_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.008264463;
// paint_32_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_32_stroke.strokeCap = StrokeCap.round;
// paint_32_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_32,paint_32_stroke);

// Path path_33 = Path();
//     path_33.moveTo(size.width*0.3402204,size.height*0.1938944);
//     path_33.cubicTo(size.width*0.3329996,size.height*0.2020765,size.width*0.3189341,size.height*0.2065672,size.width*0.3100496,size.height*0.2137550);
//     path_33.cubicTo(size.width*0.2916774,size.height*0.2286185,size.width*0.2788783,size.height*0.2447607,size.width*0.2823691,size.height*0.2640264);

// Paint paint_33_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.008264463;
// paint_33_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_33_stroke.strokeCap = StrokeCap.round;
// paint_33_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_33,paint_33_stroke);

// Path path_34 = Path();
//     path_34.moveTo(size.width*0.5647383,size.height*0.1262376);
//     path_34.cubicTo(size.width*0.5502446,size.height*0.1330964,size.width*0.5362475,size.height*0.1402537,size.width*0.5179763,size.height*0.1436976);
//     path_34.cubicTo(size.width*0.5060990,size.height*0.1459363,size.width*0.4951303,size.height*0.1444492,size.width*0.4849905,size.height*0.1417246);
//     path_34.cubicTo(size.width*0.4720210,size.height*0.1382397,size.width*0.4600923,size.height*0.1333705,size.width*0.4490358,size.height*0.1278878);

// Paint paint_34_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.008264463;
// paint_34_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_34_stroke.strokeCap = StrokeCap.round;
// paint_34_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_34,paint_34_stroke);

// Path path_35 = Path();
//     path_35.moveTo(size.width*0.5055096,size.height*0.4463696);
//     path_35.cubicTo(size.width*0.5055096,size.height*0.4683719,size.width*0.5055096,size.height*0.4903740,size.width*0.5055096,size.height*0.5123762);

// Paint paint_35_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.01101928;
// paint_35_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_35_stroke.strokeCap = StrokeCap.round;
// paint_35_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_35,paint_35_stroke);

// Path path_36 = Path();
//     path_36.moveTo(size.width*0.3677686,size.height*0.7351485);
//     path_36.cubicTo(size.width*0.3729184,size.height*0.7393465,size.width*0.3755724,size.height*0.7443095,size.width*0.3771468,size.height*0.7492053);
//     path_36.cubicTo(size.width*0.3795777,size.height*0.7567643,size.width*0.3866082,size.height*0.7619914,size.width*0.3981686,size.height*0.7638046);
//     path_36.cubicTo(size.width*0.4102855,size.height*0.7657051,size.width*0.4190464,size.height*0.7607756,size.width*0.4270701,size.height*0.7558179);
//     path_36.cubicTo(size.width*0.4313873,size.height*0.7531503,size.width*0.4312026,size.height*0.7480867,size.width*0.4393939,size.height*0.7475248);

// Paint paint_36_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.008264463;
// paint_36_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_36_stroke.strokeCap = StrokeCap.round;
// paint_36_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_36,paint_36_stroke);

// Path path_37 = Path();
//     path_37.moveTo(size.width*0.6446281,size.height*0.7359736);
//     path_37.cubicTo(size.width*0.6371731,size.height*0.7389135,size.width*0.6372710,size.height*0.7440397,size.width*0.6351457,size.height*0.7483779);
//     path_37.cubicTo(size.width*0.6314153,size.height*0.7559931,size.width*0.6251087,size.height*0.7627225,size.width*0.6115133,size.height*0.7637585);
//     path_37.cubicTo(size.width*0.5977563,size.height*0.7648069,size.width*0.5877215,size.height*0.7597946,size.width*0.5812246,size.height*0.7524888);
//     path_37.cubicTo(size.width*0.5796756,size.height*0.7507469,size.width*0.5775941,size.height*0.7491749,size.width*0.5757576,size.height*0.7475248);

// Paint paint_37_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.008264463;
// paint_37_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_37_stroke.strokeCap = StrokeCap.round;
// paint_37_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_37,paint_37_stroke);

// Path path_38 = Path();
//     path_38.moveTo(size.width*0.5702479,size.height*0.1592409);
//     path_38.cubicTo(size.width*0.5884955,size.height*0.1698688,size.width*0.6137276,size.height*0.1726277,size.width*0.6350172,size.height*0.1798352);
//     path_38.cubicTo(size.width*0.6414284,size.height*0.1820056,size.width*0.6484270,size.height*0.1836279,size.width*0.6515152,size.height*0.1881188);

// Paint paint_38_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.008264463;
// paint_38_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_38_stroke.strokeCap = StrokeCap.round;
// paint_38_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_38,paint_38_stroke);

// Path path_39 = Path();
//     path_39.moveTo(size.width*0.5716253,size.height*0.7450495);
//     path_39.cubicTo(size.width*0.5669430,size.height*0.7515951,size.width*0.5722013,size.height*0.7572064,size.width*0.5755328,size.height*0.7632458);
//     path_39.cubicTo(size.width*0.5819445,size.height*0.7748689,size.width*0.5923034,size.height*0.7852690,size.width*0.6050700,size.height*0.7943596);
//     path_39.cubicTo(size.width*0.6203642,size.height*0.8052501,size.width*0.6426445,size.height*0.8046193,size.width*0.6639118,size.height*0.7945545);

// Paint paint_39_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.008264463;
// paint_39_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_39_stroke.strokeCap = StrokeCap.round;
// paint_39_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_39,paint_39_stroke);

// Path path_40 = Path();
//     path_40.moveTo(size.width*0.4393939,size.height*0.1608911);
//     path_40.cubicTo(size.width*0.4195190,size.height*0.1687087,size.width*0.3975413,size.height*0.1740083,size.width*0.3760276,size.height*0.1798608);
//     path_40.cubicTo(size.width*0.3692338,size.height*0.1817089,size.width*0.3630509,size.height*0.1839576,size.width*0.3595041,size.height*0.1881188);

// Paint paint_40_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.008264463;
// paint_40_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_40_stroke.strokeCap = StrokeCap.round;
// paint_40_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_40,paint_40_stroke);

// Path path_41 = Path();
//     path_41.moveTo(size.width*0.4393939,size.height*0.7450495);
//     path_41.cubicTo(size.width*0.4453740,size.height*0.7552936,size.width*0.4357251,size.height*0.7636864,size.width*0.4294296,size.height*0.7721916);
//     path_41.cubicTo(size.width*0.4248102,size.height*0.7784325,size.width*0.4185847,size.height*0.7844457,size.width*0.4125802,size.height*0.7901878);
//     path_41.cubicTo(size.width*0.4060260,size.height*0.7964556,size.width*0.3932239,size.height*0.8009159,size.width*0.3813769,size.height*0.8022939);
//     path_41.cubicTo(size.width*0.3707687,size.height*0.8035278,size.width*0.3578002,size.height*0.8019246,size.width*0.3497732,size.height*0.7954190);
//     path_41.cubicTo(size.width*0.3490671,size.height*0.7948467,size.width*0.3471074,size.height*0.7948295,size.width*0.3457300,size.height*0.7945545);

// Paint paint_41_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.008264463;
// paint_41_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_41_stroke.strokeCap = StrokeCap.round;
// paint_41_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_41,paint_41_stroke);

// Path path_42 = Path();
//     path_42.moveTo(size.width*0.5041322,size.height*0.3341584);
//     path_42.cubicTo(size.width*0.4823100,size.height*0.3312907,size.width*0.4608654,size.height*0.3337390,size.width*0.4393939,size.height*0.3358086);

// Paint paint_42_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.008264463;
// paint_42_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_42_stroke.strokeCap = StrokeCap.round;
// paint_42_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_42,paint_42_stroke);

// Path path_43 = Path();
//     path_43.moveTo(size.width*0.5055096,size.height*0.3778878);
//     path_43.cubicTo(size.width*0.4843168,size.height*0.3796112,size.width*0.4632918,size.height*0.3767106,size.width*0.4421488,size.height*0.3770627);

// Paint paint_43_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.01101928;
// paint_43_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_43_stroke.strokeCap = StrokeCap.round;
// paint_43_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_43,paint_43_stroke);

// Path path_44 = Path();
//     path_44.moveTo(size.width*0.5716253,size.height*0.3762376);
//     path_44.cubicTo(size.width*0.5505781,size.height*0.3785236,size.width*0.5294979,size.height*0.3799053,size.width*0.5082645,size.height*0.3770627);

// Paint paint_44_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.01101928;
// paint_44_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_44_stroke.strokeCap = StrokeCap.round;
// paint_44_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_44,paint_44_stroke);

// Path path_45 = Path();
//     path_45.moveTo(size.width*0.9710744,size.height*0.5321782);
//     path_45.cubicTo(size.width*0.9849624,size.height*0.5421790,size.width*0.9847239,size.height*0.5534490,size.width*0.9793388,size.height*0.5651815);

// Paint paint_45_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.008264463;
// paint_45_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_45_stroke.strokeCap = StrokeCap.round;
// paint_45_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_45,paint_45_stroke);

// Path path_46 = Path();
//     path_46.moveTo(size.width*0.05509642,size.height*0.5156766);
//     path_46.cubicTo(size.width*0.04980735,size.height*0.5215276,size.width*0.04675048,size.height*0.5280026,size.width*0.03875585,size.height*0.5331091);
//     path_46.cubicTo(size.width*0.03147120,size.height*0.5377621,size.width*0.02934075,size.height*0.5439041,size.width*0.03028186,size.height*0.5503311);
//     path_46.cubicTo(size.width*0.03096507,size.height*0.5549969,size.width*0.02899138,size.height*0.5597596,size.width*0.03168044,size.height*0.5643564);

// Paint paint_46_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.008264463;
// paint_46_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_46_stroke.strokeCap = StrokeCap.round;
// paint_46_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_46,paint_46_stroke);

// Path path_47 = Path();
//     path_47.moveTo(size.width*0.3677686,size.height*0.2995050);
//     path_47.cubicTo(size.width*0.3682277,size.height*0.3006051,size.width*0.3680649,size.height*0.3021582,size.width*0.3692398,size.height*0.3027369);
//     path_47.cubicTo(size.width*0.3853606,size.height*0.3106767,size.width*0.3988610,size.height*0.3205097,size.width*0.4173554,size.height*0.3267327);

// Paint paint_47_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.008264463;
// paint_47_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_47_stroke.strokeCap = StrokeCap.round;
// paint_47_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_47,paint_47_stroke);

// Path path_48 = Path();
//     path_48.moveTo(size.width*0.6391185,size.height*0.3003300);
//     path_48.cubicTo(size.width*0.6212826,size.height*0.2999356,size.width*0.6044238,size.height*0.3039894,size.width*0.5867769,size.height*0.3044554);

// Paint paint_48_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.008264463;
// paint_48_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_48_stroke.strokeCap = StrokeCap.round;
// paint_48_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_48,paint_48_stroke);

// Path path_49 = Path();
//     path_49.moveTo(size.width*0.5371901,size.height*0.2920792);
//     path_49.cubicTo(size.width*0.5495868,size.height*0.2953795,size.width*0.5620546,size.height*0.2985879,size.width*0.5743618,size.height*0.3020039);
//     path_49.cubicTo(size.width*0.5891832,size.height*0.3061176,size.width*0.5939735,size.height*0.3123490,size.width*0.5910230,size.height*0.3226190);
//     path_49.cubicTo(size.width*0.5906528,size.height*0.3239077,size.width*0.5897278,size.height*0.3256091,size.width*0.5922865,size.height*0.3267327);

// Paint paint_49_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.008264463;
// paint_49_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_49_stroke.strokeCap = StrokeCap.round;
// paint_49_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_49,paint_49_stroke);

// Path path_50 = Path();
//     path_50.moveTo(size.width*0.5082645,size.height*0.3325083);
//     path_50.cubicTo(size.width*0.5303834,size.height*0.3325625,size.width*0.5521611,size.height*0.3358883,size.width*0.5743802,size.height*0.3349835);

// Paint paint_50_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.01377410;
// paint_50_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_50_stroke.strokeCap = StrokeCap.round;
// paint_50_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_50,paint_50_stroke);

// Path path_51 = Path();
//     path_51.moveTo(size.width*0.5743802,size.height*0.1922442);
//     path_51.cubicTo(size.width*0.5630774,size.height*0.1939460,size.width*0.5511024,size.height*0.1921585,size.width*0.5399159,size.height*0.1946732);
//     path_51.cubicTo(size.width*0.5372718,size.height*0.1952675,size.width*0.5338107,size.height*0.1948293,size.width*0.5330579,size.height*0.1971947);

// Paint paint_51_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.008264463;
// paint_51_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_51_stroke.strokeCap = StrokeCap.round;
// paint_51_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_51,paint_51_stroke);

// Path path_52 = Path();
//     path_52.moveTo(size.width*0.5068871,size.height*0.2681518);
//     path_52.cubicTo(size.width*0.5165218,size.height*0.2758557,size.width*0.5261565,size.height*0.2835596,size.width*0.5365066,size.height*0.2918355);
//     path_52.cubicTo(size.width*0.5265773,size.height*0.2955051,size.width*0.5108096,size.height*0.2925823,size.width*0.5055096,size.height*0.3011551);

// Paint paint_52_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.008264463;
// paint_52_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_52_stroke.strokeCap = StrokeCap.round;
// paint_52_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_52,paint_52_stroke);

// Path path_53 = Path();
//     path_53.moveTo(size.width*0.4683196,size.height*0.4224422);
//     path_53.cubicTo(size.width*0.4703898,size.height*0.4263215,size.width*0.4758115,size.height*0.4256720,size.width*0.4807161,size.height*0.4257460);
//     path_53.cubicTo(size.width*0.4854625,size.height*0.4258177,size.width*0.4898765,size.height*0.4262342,size.width*0.4946194,size.height*0.4271540);
//     path_53.cubicTo(size.width*0.5031750,size.height*0.4288134,size.width*0.5082985,size.height*0.4304745,size.width*0.5043281,size.height*0.4365148);
//     path_53.cubicTo(size.width*0.5034506,size.height*0.4378497,size.width*0.5050505,size.height*0.4397690,size.width*0.5055096,size.height*0.4414191);

// Paint paint_53_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.008264463;
// paint_53_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_53_stroke.strokeCap = StrokeCap.round;
// paint_53_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_53,paint_53_stroke);

// Path path_54 = Path();
//     path_54.moveTo(size.width*0.5055096,size.height*0.4166667);
//     path_54.cubicTo(size.width*0.4886422,size.height*0.4210662,size.width*0.4710888,size.height*0.4215424,size.width*0.4531664,size.height*0.4199736);
//     path_54.cubicTo(size.width*0.4495045,size.height*0.4196530,size.width*0.4458218,size.height*0.4194169,size.width*0.4421488,size.height*0.4191419);

// Paint paint_54_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.01101928;
// paint_54_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_54_stroke.strokeCap = StrokeCap.round;
// paint_54_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_54,paint_54_stroke);

// Path path_55 = Path();
//     path_55.moveTo(size.width*0.5055096,size.height*0.4018152);
//     path_55.cubicTo(size.width*0.5055096,size.height*0.4187614,size.width*0.5055146,size.height*0.4187221,size.width*0.5344284,size.height*0.4200216);
//     path_55.cubicTo(size.width*0.5376929,size.height*0.4201683,size.width*0.5408632,size.height*0.4210671,size.width*0.5440771,size.height*0.4216172);

// Paint paint_55_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.01101928;
// paint_55_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_55_stroke.strokeCap = StrokeCap.round;
// paint_55_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_55,paint_55_stroke);

// Path path_56 = Path();
//     path_56.moveTo(size.width*0.5055096,size.height*0.3556106);
//     path_56.cubicTo(size.width*0.5055096,size.height*0.3682618,size.width*0.5055096,size.height*0.3809131,size.width*0.5055096,size.height*0.3935644);

// Paint paint_56_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.01101928;
// paint_56_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_56_stroke.strokeCap = StrokeCap.round;
// paint_56_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_56,paint_56_stroke);

// Path path_57 = Path();
//     path_57.moveTo(size.width*0.5055096,size.height*0.3127063);
//     path_57.cubicTo(size.width*0.5038239,size.height*0.3195820,size.width*0.5085096,size.height*0.3264576,size.width*0.5055096,size.height*0.3333333);

// Paint paint_57_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.01101928;
// paint_57_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_57_stroke.strokeCap = StrokeCap.round;
// paint_57_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_57,paint_57_stroke);

// Path path_58 = Path();
//     path_58.moveTo(size.width*0.5399449,size.height*0.4240924);
//     path_58.cubicTo(size.width*0.5331207,size.height*0.4276903,size.width*0.5239481,size.height*0.4245084,size.width*0.5162358,size.height*0.4270769);
//     path_58.cubicTo(size.width*0.5135026,size.height*0.4279871,size.width*0.5104980,size.height*0.4295979,size.width*0.5068871,size.height*0.4298680);

// Paint paint_58_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.008264463;
// paint_58_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_58_stroke.strokeCap = StrokeCap.round;
// paint_58_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_58,paint_58_stroke);

// Path path_59 = Path();
//     path_59.moveTo(size.width*0.4752066,size.height*0.2929043);
//     path_59.cubicTo(size.width*0.4849681,size.height*0.2956639,size.width*0.4973778,size.height*0.2940609,size.width*0.5055096,size.height*0.2995050);

// Paint paint_59_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.008264463;
// paint_59_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_59_stroke.strokeCap = StrokeCap.round;
// paint_59_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_59,paint_59_stroke);

// Path path_60 = Path();
//     path_60.moveTo(size.width*0.7093664,size.height*0.2689769);
//     path_60.cubicTo(size.width*0.7177397,size.height*0.2738869,size.width*0.7254340,size.height*0.2792514,size.width*0.7355372,size.height*0.2830033);

// Paint paint_60_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.005509642;
// paint_60_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_60_stroke.strokeCap = StrokeCap.round;
// paint_60_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_60,paint_60_stroke);

// Path path_61 = Path();
//     path_61.moveTo(size.width*0.2713498,size.height*0.2673267);
//     path_61.cubicTo(size.width*0.2722681,size.height*0.2725523,size.width*0.2731864,size.height*0.2777778,size.width*0.2741047,size.height*0.2830033);

// Paint paint_61_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.008264463;
// paint_61_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_61_stroke.strokeCap = StrokeCap.round;
// paint_61_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_61,paint_61_stroke);

// Path path_62 = Path();
//     path_62.moveTo(size.width*0.5688705,size.height*0.4191419);
//     path_62.cubicTo(size.width*0.5615219,size.height*0.4196803,size.width*0.5536608,size.height*0.4177627,size.width*0.5468320,size.height*0.4207921);

// Paint paint_62_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.008264463;
// paint_62_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_62_stroke.strokeCap = StrokeCap.round;
// paint_62_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_62,paint_62_stroke);

// Path path_63 = Path();
//     path_63.moveTo(size.width*0.3305785,size.height*0.9719472);
//     path_63.cubicTo(size.width*0.3459816,size.height*0.9764265,size.width*0.3586919,size.height*0.9712281,size.width*0.3719008,size.height*0.9678218);

// Paint paint_63_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.008264463;
// paint_63_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_63_stroke.strokeCap = StrokeCap.round;
// paint_63_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_63,paint_63_stroke);

// Path path_64 = Path();
//     path_64.moveTo(size.width*0.6391185,size.height*0.9669967);
//     path_64.cubicTo(size.width*0.6522169,size.height*0.9706706,size.width*0.6645103,size.height*0.9767557,size.width*0.6804408,size.height*0.9719472);

// Paint paint_64_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.008264463;
// paint_64_stroke.color=Color(0xff000000).withOpacity(1.0);
// paint_64_stroke.strokeCap = StrokeCap.round;
// paint_64_stroke.strokeJoin = StrokeJoin.round;
// canvas.drawPath(path_64,paint_64_stroke);

// }

// @override
// bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
// }
// }