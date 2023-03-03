
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class ContactForm extends StatefulWidget {
  @override
  _ContactFormState createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final messageController = TextEditingController();

  final databaseReference = FirebaseFirestore.instance;

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Save form data to Firebase
      databaseReference.collection('contacts').add({
        'name': nameController.text,
        'email': emailController.text,
        'message': messageController.text,
      }).then((value) {
        // Clear form
        nameController.clear();
        emailController.clear();
        messageController.clear();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Form submitted')),
        );
      }).catchError((error) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error: $error')),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: nameController,
            validator: (value) {
              if (value==null) {
                return 'Please enter your name';
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: 'Name',
            ),
          ),
          TextFormField(
            controller: emailController,
            validator: (value) {
              if (value == null) {
                return 'Please enter your email';
              }
              if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                  .hasMatch(value)) {
                return 'Please enter a valid email';
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: 'Email',
            ),
          ),
          TextFormField(
            controller: messageController,
            validator: (value) {
              if (value==null) {
                return 'Please enter your message';
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: 'Message',
            ),
            maxLines: 3,
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: _submitForm,
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }
}
