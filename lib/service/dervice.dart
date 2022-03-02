import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:sggs/model/model.dart';

class Service {
  static const url =
      "https://sggsonline.com/software-admin/apis/getContentsList.php?lang_id=2&content_type_id=8&page_no=101";

  getDBData() async {
    // try {
    //   final response = await http.get(Uri.parse(url));
    //   if (response.statusCode == 200) {
    //     // print("Get Data is   " + response.body);
    //     return modelFromJson(response.body);
    //   } else {
    //     print("Try agian");
    //   }
    // } catch (e) {
    //   print("Error cannot connect " + e.toString());
    // }
  }
}
