import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HyperlinkButton extends StatelessWidget {
  const HyperlinkButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Video of Recipe',
          style: TextStyle(
              color: Color.fromARGB(255, 22, 47, 67),
              decoration: TextDecoration.underline,
              fontSize: 22),
        ),
      ),
      onTap: () => launchUrlString('https://www.example.com'),
    );
  }
}
