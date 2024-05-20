import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectUrl {
  final translator = "https://github.com/TopuFD/Language-translator";
  final qrScanner = "https://github.com/TopuFD/QR-Bar-code-Scanner";
  final news = "https://github.com/TopuFD/News-App";
  final eCommers = "https://github.com/TopuFD/Laza";
  final chat = "https://github.com/TopuFD/Chat_app";
  final calculator = "https://github.com/TopuFD/Calculator";

    urlLauncher(BuildContext context, String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      try {
        await launchUrl(Uri.parse(url));
      } catch (e) {
        // ignore: use_build_context_synchronously
        _showErrorDialog(context, 'An error occurred while trying to open the URL.');
      }
    } else {
      // ignore: use_build_context_synchronously
      _showErrorDialog(context, 'Could not launch the URL.');
    }
  }
  void _showErrorDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Error'),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }
}
