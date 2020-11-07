import 'package:asset_cache/asset_cache.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:mediainteaktifpangan/app/binding/QuizBinding.dart';
import 'package:mediainteaktifpangan/app/ui/quiz/QuizScreen.dart';

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
      title: 'Flutter Demo',
      theme: buildThemeData(context),
      // theme: ThemeData.dark(),
      initialRoute: '/spalsh',

      getPages: [
        //Simple GetPage
        GetPage(name: '/spalsh', page: () => SplashScreen()),
        // GetPage with custom transitions and bindings
        GetPage(
          name: '/QuizScreen',
          page: () => QuizScreen(),
          binding: QuizBinding(),
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
