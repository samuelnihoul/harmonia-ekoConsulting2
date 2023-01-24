import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color active = Color(0xFFffd700);
Color disable = Color(0xFFdb1a4d);
Color bgColor = Color(0xFF1a1a1a);
Color textColor = Color(0xFFffffff);

TextStyle h1 = TextStyle(
    fontSize: 72.0,
    fontWeight: FontWeight.bold,
    color: active,
    fontFamily: GoogleFonts.berkshireSwash().fontFamily);
TextStyle h2 = TextStyle(
    fontFamily: GoogleFonts.berkshireSwash().fontFamily,
    fontSize: 36.0,
    color: textColor);
TextStyle p = h2.copyWith(
  fontSize: 14.0,
);
TextStyle h3 = h2.copyWith(fontSize: 24.0, color: disable);
TextStyle pInverse = p.copyWith(
  color: bgColor,
);
TextStyle h2Inverse = h2.copyWith(
  color: bgColor,
);
