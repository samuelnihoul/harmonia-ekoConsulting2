import 'package:flutter/material.dart';

class DesktopContactScreen extends StatelessWidget {
  const DesktopContactScreen({super.key});
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(child: Text('Contact'));
  }
}
