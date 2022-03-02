import 'package:flutter/material.dart';

snackBar(@required context, String text) {
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(text),
    duration:const Duration(milliseconds: 600),
  ));
}
