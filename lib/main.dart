import 'package:asset_cache/asset_cache.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:mediainteaktifpangan/app/binding/EnergiBinding.dart';
import 'package:mediainteaktifpangan/app/binding/HomeBinding.dart';
import 'package:mediainteaktifpangan/app/binding/IndustriBinding.dart';
import 'package:mediainteaktifpangan/app/binding/Pengelolahan2Binding.dart';
import 'package:mediainteaktifpangan/app/binding/Pengelolahan3Binding.dart';
import 'package:mediainteaktifpangan/app/binding/PengelolahanBinding.dart';
import 'package:mediainteaktifpangan/app/binding/PeternakanBinding.dart';
import 'package:mediainteaktifpangan/app/binding/PerikananBinding.dart';
import 'package:mediainteaktifpangan/app/binding/PerkebunanBinding.dart';
import 'package:mediainteaktifpangan/app/binding/PertanianBinding.dart';
import 'package:mediainteaktifpangan/app/binding/QuizBinding.dart';
import 'package:mediainteaktifpangan/app/ui/home/homeScreen.dart';
import 'package:mediainteaktifpangan/app/ui/materi/Energi/Materi_Energi.dart';
import 'package:mediainteaktifpangan/app/ui/materi/industri/Materi_Industri.dart';
import 'package:mediainteaktifpangan/app/ui/materi/pangan/Peternakan.dart';
import 'package:mediainteaktifpangan/app/ui/materi/pangan/Perikanan.dart';
import 'package:mediainteaktifpangan/app/ui/materi/pangan/Perkebunan.dart';
import 'package:mediainteaktifpangan/app/ui/materi/pangan/Pertanian.dart';
import 'package:mediainteaktifpangan/app/ui/materi/pengolahan/Materi_Pengelolahan.dart';
import 'package:mediainteaktifpangan/app/ui/materi/pengolahan/Materi_Pengelolahan3.dart';
import 'package:mediainteaktifpangan/app/ui/materi/pengolahan/Materi_Pengelolahan2.dart';
import 'package:mediainteaktifpangan/app/ui/quiz/Quiz2Screen.dart';

import 'app/ui/splashscreen/splashScreen.dart';

void main() {
  ByteDataAssets.instance.basePath = 'assets/images/';
  JsonAssets.instance.basePath = 'assets/json/';

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
  runApp(MyApp());
}

const Color secondaryColor = Color(0xFF73AFB0);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    precacheImage(AssetImage("assets/bg_01.jpg"), context);

    return GetMaterialApp(
      enableLog: true,
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.zoom,
      // transitionDuration: new Duration(milliseconds: 1000),
      title: 'Media Interaktif Energi Terbarukan',
      theme: buildThemeData(context),
      // theme: ThemeData.dark(),
      initialRoute: '/spalsh',

      getPages: [
        //Simple GetPage
        GetPage(name: '/spalsh', page: () => SplashScreen()),
        // GetPage with custom transitions and bindings
        GetPage(
          name: '/QuizScreen',
          page: () => Quiz2Screen(),
          binding: QuizBinding(),
          transition: Transition.zoom,
        ),
        GetPage(
          name: '/HomeScreen',
          page: () => Home(),
          binding: HomeBinding(),
          transition: Transition.zoom,
        ),
        GetPage(
          name: '/Pertanian',
          page: () => MateriPertanian(),
          binding: PertanianBinding(),
          transition: Transition.zoom,
        ),
        GetPage(
          name: '/Perkebunan',
          page: () => PerkebunanScreen(),
          binding: PerkebunanBinding(),
          transition: Transition.zoom,
        ),
        GetPage(
          name: '/Perikanan',
          page: () => PerikananScreen(),
          binding: PerikananBinding(),
          transition: Transition.zoom,
        ),
        GetPage(
          name: '/Peternakan',
          page: () => PeternakanScreen(),
          binding: PeternakanBinding(),
          transition: Transition.zoom,
        ),
        GetPage(
          name: '/Industri',
          page: () => IndustriScreen(),
          binding: IndustriBinding(),
          transition: Transition.zoom,
        ),
        GetPage(
          name: '/Energi',
          page: () => EnergiScreen(),
          binding: EnergiBinding(),
          transition: Transition.zoom,
        ),
        GetPage(
          name: '/Pengelolahan',
          page: () => PengelolahanScreen(),
          binding: PengelolahanBinding(),
          transition: Transition.zoom,
        ),
        GetPage(
          name: '/Pengelolahan2',
          page: () => Pengelolahan2Screen(),
          binding: Pengelolahan2Binding(),
          transition: Transition.zoom,
        ),
        GetPage(
          name: '/Pengelolahan3',
          page: () => Pengelolahan3Screen(),
          binding: Pengelolahan3Binding(),
          transition: Transition.zoom,
        ),
      ],
    );
  }

  ThemeData buildThemeData(BuildContext context) {
    return ThemeData(
      primarySwatch: Colors.blue,
      // accentColor: Colors.indigo[900],
      visualDensity: VisualDensity.adaptivePlatformDensity,
      buttonTheme: Theme.of(context).buttonTheme.copyWith(
            textTheme: ButtonTextTheme.primary,
          ),
    );
  }
}
