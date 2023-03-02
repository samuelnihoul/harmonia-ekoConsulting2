import 'package:flutter/material.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

import '../../helpers/config.dart';

class MobileContactScreen extends StatefulWidget {
  @override
  _MobileContactScreenState createState() => _MobileContactScreenState();
}

class _MobileContactScreenState extends State<MobileContactScreen> {
  final _formKey = GlobalKey<FormState>();
  static const hemail = 'samuelnihoul@gmail.com';
  final config = Config.loadEnv();
  String _name = '';
  String _email = '';
  String _phoneNumber = '';
  String _message = '';

  @override
  Widget build(BuildContext context) {
    final hePassword = "czhweqzrqlvckhsm";
    final smtpServer = gmail(hemail, hePassword!);
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
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
              SizedBox(height: 20),
              Builder(builder: (context) {
                return ElevatedButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      // Implement your onSubmit function here
                      // For example, you could send an email using a third-party service
                      print('Name: $_name');
                      print('Email: $_email');
                      print('Phone Number: $_phoneNumber');
                      print('Message: $_message');
                      final message = Message()
                        ..from = Address('hello', 'hello')
                        ..recipients.add('contact@harmonia-eko.ooo')
                        ..subject =
                            'Test Dart Mailer library :: 😀 :: ${DateTime.now()}'
                        ..text =
                            'This is the plain text.\nThis is line 2 of the text part.'
                        ..html =
                            "<h1>Test</h1>\n<p>Heuuuu! Here's some HTML content</p>";

                      try {
                        final sendReport = await send(message, smtpServer);
                        print('Message sent: ' + sendReport.toString());
                      } on MailerException catch (e) {
                        print('Message not sent.');
                        for (var p in e.problems) {
                          print('Problem: ${p.code}: ${p.msg}');
                        }
                      }
                    }
                  },
                  child: Text('Submit'),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
