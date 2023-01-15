import 'package:flutter/material.dart';
import 'package:flutter_web_example/pages/home/home.dart';
import 'package:flutter_web_example/pages/about.dart/home.dart';
import 'package:flutter_web_example/pages/contact/home.dart';
import 'package:flutter_web_example/pages/nosClients/home.dart';
import 'package:flutter_web_example/pages/ourOffer.dart/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Web',
      theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: Typography.whiteCupertino),
      home: HomePage(),
      routes: {
        '/home': (context) => HomePage(),
        '/about': (context) => About(),
        '/contact': (context) => Contact(),
        '/ourClients': (context) => OurClient(),
        '/ourServices': (context) => OurOffer(),
      },
    );
  }
}
