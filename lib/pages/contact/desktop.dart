import 'package:flutter/material.dart';
import '../../widgets/gmailButton.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';
import '../../helpers/config.dart';
class DesktopContactScreen extends StatefulWidget {
  @override
  _DesktopContactScreenState createState() => _DesktopContactScreenState();
}

class _DesktopContactScreenState extends State<DesktopContactScreen> {
  final _formKey = GlobalKey<FormState>();
  String _name = '';
  String _email = '';
  String _phoneNumber = '';
  String _message = '';
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
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Contact Us',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Text(
                  'Fill out the form below to get in touch with us.',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(hintText: 'Name'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your name.';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _name = value!;
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(hintText: 'Email'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your email address.';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _email = value!;
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(hintText: 'Phone Number'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your phone number.';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _phoneNumber = value!;
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  maxLines: 4,
                  decoration: InputDecoration(hintText: 'Message'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter a message.';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _message = value!;
                  },
                ),
                GmailButton(),
                SizedBox(height: 20),
  // DONEessage');
              ],
            ),
          ),
        ),
      ),
    );
  }
}
