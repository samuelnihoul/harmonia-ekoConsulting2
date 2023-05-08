import 'package:flutter/material.dart';
import './router.dart';
import './helpers/style.dart';
import 'package:firebase_core/firebase_core.dart';
import './firebase_options.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HE Consulting',
      theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: GoogleFonts.montserratTextTheme(),
          colorScheme: ColorScheme(
              secondary: disable,
              onSurface: Colors.white,
              surface: active,
              onBackground: Colors.white,
              background: Colors.white,
              onError: Colors.white,
              error: disable,
              onSecondary: Colors.white,
              onPrimary: Colors.white,
              primary: active,
              brightness: Brightness.dark)),
      home: HomePage(),
      routes: {
        '/about': (context) => HomePage(),
        '/contact': (context) => HomePage(),
        '/services': (context) => HomePage(),
      },
    );
  }
}
