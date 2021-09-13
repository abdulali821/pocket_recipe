import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: non_constant_identifier_names
Widget Customtext(
  String text,
  Color color,
  double size,
  FontWeight fontWeight,
  TextAlign alignText,
) {
  return Text(text,textAlign: alignText,style: GoogleFonts.montserrat(
    textStyle: TextStyle(
      fontSize: size,
      fontWeight: fontWeight,
      color: color,
    ),
  ));
}
