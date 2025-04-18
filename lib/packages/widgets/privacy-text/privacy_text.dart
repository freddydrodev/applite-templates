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
        style: smallDefault.copyWith(
          color: Colors.white,
        ),
        children: [
          const TextSpan(
            text: 'By clicking on the button below, you agree to our ',
          ),
          TextSpan(
            text: 'Terms of Use',
            style: smallLink,
            recognizer: TapGestureRecognizer()
              ..onTap = () async {
                final url = Uri.parse('https://example.com/terms');
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                }
              },
          ),
          const TextSpan(text: ' and '),
          TextSpan(
            text: 'Privacy Policy',
            style: smallLink,
            recognizer: TapGestureRecognizer()
              ..onTap = () async {
                final url = Uri.parse('https://example.com/privacy');
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                }
              },
          ),
          const TextSpan(text: '.'),
        ],
      ),
    );
  }
}
