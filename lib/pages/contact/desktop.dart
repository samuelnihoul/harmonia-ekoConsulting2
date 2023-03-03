import 'package:flutter/material.dart';
import '../../widgets/ContactForm.dart';
class DesktopContactScreen extends StatefulWidget {
  @override
  _DesktopContactScreenState createState() => _DesktopContactScreenState();
}

class _DesktopContactScreenState extends State<DesktopContactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 600,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10),
          ),
            child:ContactForm()
        ),
      ),
    );
  }
}
