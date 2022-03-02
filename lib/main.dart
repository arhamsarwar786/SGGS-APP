import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'LanguageSelect.dart';
import 'Mainpage.dart';
import 'SplashScreen.dart';
import 'package:sizer/sizer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
        // home: MainPage(),
      );
    });
  }
}

