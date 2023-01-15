import 'package:flutter/material.dart';
import 'package:flutter_web_example/pages/home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: true,
      title: 'Flutter Web',
      theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: Typography.whiteCupertino),
      home: HomePage(),
      routes: {
        '/home': (context) => HomePage(),
        '/about': (context) => HomePage(),
        '/contact': (context) => HomePage(),
        '/ourClients': (context) => HomePage(),
        '/ourServices': (context) => HomePage(),
      },
    );
  }
}
