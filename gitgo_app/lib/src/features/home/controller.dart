import 'dart:developer';

import 'package:url_launcher/url_launcher.dart';

class UrlController {
  static Future<void> launchLink(String url) async {
    final uri = Uri.parse(url);

    try {
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri, mode: LaunchMode.inAppWebView);
      } else {
        throw Exception("Url cannot be launched");
      }
    } catch (e) {
      log(e.toString());
      throw Exception("Error launching Url");
    }
  }
}
