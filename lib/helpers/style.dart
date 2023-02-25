import 'package:flutter/material.dart';

Color active = Color(0xFFf9c22e);
Color disable = Color(0xFFdb1a4d);
Color bgColor = Color(0xFF1a1a1a);
Color textColor = Color(0xFFffffff);
Color lightActive = Color(0xfffbd46d);
TextStyle h1 = TextStyle(
  fontSize: 72.0,
  fontWeight: FontWeight.bold,
  color: active,
);
TextStyle h2 =
    TextStyle(fontWeight: FontWeight.bold, fontSize: 36.0, color: textColor);
TextStyle p = TextStyle(
  fontSize: 14.0,
);
TextStyle h3 = h2.copyWith(fontSize: 24.0, color: disable);
TextStyle pInverse = p.copyWith(
  color: bgColor,
);
TextStyle h2Inverse = h2.copyWith(
  color: bgColor,
);
TextStyle navbarTitle = TextStyle(
  fontSize: 16.0,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);
TextStyle navbarItem = TextStyle(
  fontSize: 14.0,
  color: Colors.white,
);
TextStyle defaultStyle = TextStyle(
  color: textColor,
);
TextStyle activeDefaultStyle = TextStyle(
  color: active,
);
TextStyle h1m = h2.copyWith(color: active);
TextStyle h2m = h3.copyWith(color: textColor);
TextStyle h3m = h3.copyWith(fontSize: 12.0);
