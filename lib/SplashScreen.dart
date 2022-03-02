// ignore_for_file: file_names

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'LanguageSelect.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  // Create a controller
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: false);

  // Create an animation with value of type "double"
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.linear,
  );

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 8), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => SelectLanguage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 20.h,
              ),
              Container(
                height: 30.h,
                width: 60.w,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          'Assets/Splash.png',
                        ),
                        fit: BoxFit.fill)),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "A JOURNEY TOWARDS SPIRITUALITY",
                style: TextStyle(
                  color: Colors.black54,
                  fontFamily: 'CinzelDecorative',
                  fontSize: 3.w,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              RotationTransition(
                turns: _animation,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.refresh,
                    color: Colors.black,
                    size: 40,
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10.0),
                child: Text(
                  "By SGGSonline.com",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      // fontFamily: 'CinzelDecorative',
                      fontSize: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
