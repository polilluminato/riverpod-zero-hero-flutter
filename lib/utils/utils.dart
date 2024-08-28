import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

gapH(double height) => SizedBox(
      height: height,
    );

gapW(double width) => SizedBox(
      width: width,
    );

Future<void> goToUrl(String url) async {
  if (!await launchUrl(Uri.parse(url))) {
    throw Exception('Could not launch $url');
  }
}
