
import 'package:flutter/material.dart';
import 'package:googleapis/gmail/v1.dart' as gmail;
import 'package:googleapis_auth/auth_io.dart';
import 'package:url_launcher/url_launcher.dart';

class GmailButton extends StatelessWidget {
  final String _email;
  final String _subject;
  final String _body;

  GmailButton({
    required String email,
    required String subject,
    required String body,
  })   : _email = email,
        _subject = subject,
        _body = body;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => _sendEmail(context),
      child: Text('Send Email'),
    );
  }

  Future<void> _sendEmail(BuildContext context) async {
    try {
      // Get the OAuth2 credentials to authorize the Gmail API
      final clientId = ClientId(
        '[YOUR CLIENT ID]',
        '[YOUR CLIENT SECRET]',
      );
      final scopes = [gmail.GmailApi.mailGoogleComScope];
      final credentials = await clientViaUserConsent(clientId, scopes, prompt).getCredentials();

      // Create the authenticated Gmail API client
      final client = gmail.GmailApi(credentials);

      // Construct the email message
      final message = gmail.Message()
        ..raw = base64Url.encode(utf8.encode(
          'To: $_email\r\n'
          'Subject: $_subject\r\n'
          '\r\n'
          '$_body',
        ));

      // Send the email
      await client.users.messages.send(message, 'me');

      // Show a success message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Email sent successfully')),
      );
    } catch (e) {
      // Show an error message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to send email')),
      );
    }
  }

  Future<void> prompt(String url) async {
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw Exception('Failed to launch authorization URL: $url');
    }
  }
}
