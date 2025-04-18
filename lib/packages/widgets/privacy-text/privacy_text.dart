import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';

class PrivacyText extends StatelessWidget {
  const PrivacyText({super.key});

  @override
  Widget build(BuildContext context) {
    final TextStyle smallDefault = Theme.of(context).textTheme.bodySmall!;

    final TextStyle smallLink = Theme.of(context).textTheme.bodySmall!.copyWith(
          color: Colors.white,
          decoration: TextDecoration.underline,
          decorationColor: Colors.white,
          decorationThickness: 2,
        );

    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: "En utilisant cette application, vous acceptez nos ",
            style: smallDefault,
          ),
          TextSpan(
            text: "conditions d'utilisation",
            style: smallLink,
            recognizer: TapGestureRecognizer()
              ..onTap = () async {
                await launchUrl(
                  Uri.parse(
                    'https://example.com/conditions-dutilisation',
                  ),
                );
              },
          ),
          TextSpan(text: " et notre ", style: smallDefault),
          TextSpan(
            text: "politique de confidentialité.",
            style: smallLink,
            recognizer: TapGestureRecognizer()
              ..onTap = () async {
                await launchUrl(
                  Uri.parse(
                    'https://example.com/politique-de-confidentialite',
                  ),
                );
              },
          ),
        ],
      ),
    );
  }
}
