import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Constants {
  static final mainColor = Colors.indigo;
  static final TextStyle style = GoogleFonts.quicksand(
    fontWeight: FontWeight.bold,
    fontSize: 24,
    color: mainColor,
  );

  static final BorderRadius borderRadius = BorderRadius.circular(24);
  static final EdgeInsetsGeometry edge = EdgeInsets.symmetric(
    horizontal: 16,
    vertical: 8,
  );

  static final EdgeInsets edge2 = EdgeInsets.symmetric(horizontal: 8);
}
