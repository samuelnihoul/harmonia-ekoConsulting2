import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:googleapis_auth/auth_io.dart' as auth;
class GmailButton extends StatelessWidget {
   GmailButton({Key? key}) : super(key: key);
    // Obtain an access token
// Use service account credentials to get an authenticated and auto refreshing client.
Future<auth.AuthClient> obtainAuthenticatedClient(BuildContext context) async {
     final fileString=await DefaultAssetBundle.of(context).loadString("assets/hypnotic-trees-328016-b2df73db7495.json") ;
    final jsonData=jsonDecode(fileString);
  final accountCredentials = auth.ServiceAccountCredentials.fromJson({
      "private_key_id": jsonData["key_id"] ,
      "private_key":jsonData["private_key"],
      "client_email":jsonData["client_email"],
      "client_id":jsonData["client_id"],
      "type":jsonData["type"]
    });
  var scopes = ['https://mail.google.com'];

  auth.AuthClient client = await auth.clientViaServiceAccount(accountCredentials, scopes);

  return client; // Remember to close the client when you are finished with it.
}
 Future<void> _sendEmail(BuildContext context) async {
    final auth.AuthClient client=await obtainAuthenticatedClient(context);
    final body = jsonEncode({
      'raw': base64Url.encode(utf8.encode('To: samuelnihoul@gmail.com\nSubject: Test Email\n\nThis is a test email sent using Flutter and the Gmail API.'))
    });
    final response = await client.post(
      Uri.parse('https://gmail.googleapis.com/gmail/v1/users/me/messages/send'),
      body: body,
    );

    if (response.statusCode == 200) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Email sent successfully!')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error occurred while sending email: ${response.body}')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => _sendEmail(context),
      child: Text('Send Email'),
    );
  }   // Send the email
}
