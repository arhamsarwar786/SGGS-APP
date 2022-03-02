// ignore_for_file: file_names

import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff44270A),
        ),
        body: const Center(
          child: Text("ABOUT US",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              )),
        ));
  }
}
