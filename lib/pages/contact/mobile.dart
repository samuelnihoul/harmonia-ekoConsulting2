import '../../widgets/ContactForm.dart';
import 'package:flutter/material.dart';

import '../../helpers/config.dart';

class MobileContactScreen extends StatefulWidget {
  @override
  _MobileContactScreenState createState() => _MobileContactScreenState();
}

class _MobileContactScreenState extends State<MobileContactScreen> {
  final config = Config.loadEnv();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ContactForm(),
      ),
    );
  }
}
