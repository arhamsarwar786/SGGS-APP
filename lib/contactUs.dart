// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff44270A),
        ),
        body: Center(
          child: Text("CONTACT US",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              )),
        ));
  }
}
