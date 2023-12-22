import 'dart:ui';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class AppConstant {
  static TextStyle textFancyheader = GoogleFonts.sourceSerif4(
      fontWeight: FontWeight.bold,
      fontSize: 40,
      color: const Color.fromARGB(255, 216, 222, 227));

  static TextStyle textError = TextStyle(
    color: Colors.red[300],
    fontSize: 16,
  );

  static TextStyle textLink =
      const TextStyle(color: Color.fromARGB(255, 7, 208, 134));
  static TextStyle textLinkDark =
      const TextStyle(color: Color.fromARGB(255, 216, 222, 227));

  static TextStyle textBody = const TextStyle(color:  Color.fromARGB(255, 8, 196, 143), fontSize: 16);
  static TextStyle textBodyFocus = const TextStyle(color: Color.fromARGB(255, 216, 222, 227), fontSize: 18);

  static Color mainColor = Color.fromARGB(255, 2, 147, 98);
  static Color secondaryColor = Color.fromARGB(255, 14, 90, 65);
  static Color thirdColor = Color.fromARGB(255, 14, 79, 59);

  static bool isDate(String str) {
    try {
      var inputFormat = DateFormat('dd/MM/yyyy');
      var date1 = inputFormat.parseStrict(str);
      return true;
    } catch (e) {
      print('--- Loi ---');
      return false;
    }
  }
}
