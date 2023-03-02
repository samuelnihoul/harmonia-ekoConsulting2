
import 'dart:io';

class Config {
  static Map<String, String> loadEnv() {
    final envVars = Platform.environment;
    return {'GMAIL_PASSWORD': envVars['GMAIL_PASSWORD']!};
  }
}
