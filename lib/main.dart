import 'package:flutter/material.dart';
import 'package:flutter_web_example/router.dart';
import './helpers/style.dart';
final TextStyle caskadia = TextStyle(fontFamily: 'Caskadia');
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HE Consulting',
      
      theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          
        colorScheme:ColorScheme(
          secondary:disable,
          onSurface:Colors.white,
          surface:active,
          onBackground:Colors.white,
          background:Colors.black,
          onError:Colors.white,
error:disable,
          onSecondary:Colors.white,
onPrimary:Colors.white,
          primary:active,
          brightness:Brightness.dark
        )
      ),

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
