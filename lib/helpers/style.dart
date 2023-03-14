import 'package:flutter/material.dart';
const Color active = Color(0xFFf9c22e);
const Color disable = Color(0xFf62b6b5);
const Color bgColor = Color(0xFF1a1a1a);
const Color textColor = Color(0xFffffffff);
const Color lightActive = Color(0xfffbd46d);
TextStyle h1 = TextStyle(
  fontSize: 72.0,
  fontWeight: FontWeight.bold,
  color: active,
  fontFamily:'Caskadia'
);
TextStyle h2 =
    TextStyle(fontWeight: FontWeight.bold, fontSize: 36.0, color: textColor,
  fontFamily:'Caskadia'
);
TextStyle p = TextStyle(
  fontSize: 14.0,
  fontFamily:'Caskadia'
);
TextStyle h3 = h2.copyWith(fontSize: 24.0, color: disable,
  fontFamily:'Caskadia'
);
TextStyle pInverse = p.copyWith(
  color: bgColor,
  fontFamily:'Caskadia'
);
TextStyle h2Inverse = h2.copyWith(
  color: bgColor,
  fontFamily:'Caskadia'
);
TextStyle navbarTitle = TextStyle(
  fontSize: 16.0,
  fontWeight: FontWeight.bold,
  color: Colors.white,
  fontFamily:'Caskadia'
);
TextStyle navbarItem = TextStyle(
  fontSize: 14.0,
  color: Colors.white,
  fontFamily:'Caskadia'
);
TextStyle defaultStyle = TextStyle(
  color: textColor,
  fontFamily:'Caskadia'
);
TextStyle activeDefaultStyle = TextStyle(
  color: active,
  fontFamily:'Caskadia'
);
TextStyle h1m = h2.copyWith(color: active);
TextStyle h2m = h3.copyWith(color: textColor);
TextStyle h3m = h3.copyWith(fontSize: 12.0);
