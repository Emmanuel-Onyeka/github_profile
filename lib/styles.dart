import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle appStyle(
    {required double size,
    required FontWeight fw,
    Color color = Colors.black}) {
  return GoogleFonts.raleway(
      fontSize: size,
      fontWeight: fw,
      color: color,
      textStyle: const TextStyle(
        overflow: TextOverflow.fade,
      ));
}
