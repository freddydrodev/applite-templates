import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class WelcomeScreen1 extends StatelessWidget {
  const WelcomeScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    final TextStyle smallDefault = Theme.of(context).textTheme.bodySmall!;

    final TextStyle smallLink = Theme.of(context).textTheme.bodySmall!.copyWith(
      color: Theme.of(context).primaryColor,
      decoration: TextDecoration.underline,
      decorationColor: Theme.of(context).primaryColor,
      decorationThickness: 2,
      decorationStyle: TextDecorationStyle.wavy,
    );

    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            title: "Majordome Pro",
            body:
                "Votre application de services à domicile qui vous facilite la vie.",
            image: Image.asset(
              'assets/images/intro/1.png',
              height: 270,
              fit: BoxFit.contain,
            ),
          ),
          PageViewModel(
            title: "Nettoyage",
            body:
                "Nous vous proposons des services de nettoyage de votre maison, bureau, hôtel, etc...",
            image: Image.asset(
              'assets/images/intro/2.png',
              height: 270,
              fit: BoxFit.contain,
            ),
          ),
          PageViewModel(
            title: "Autres services",
            body:
                "Nous vous proposons d'autres services tels que la plomberie, l'électricité, la serrurerie, etc...",
            image: Image.asset(
              'assets/images/intro/3.png',
              width: 220,
              fit: BoxFit.contain,
            ),
          ),
          PageViewModel(
            title: "Bienvenue dans la famille !",
            body: "Nous sommes ravis de vous voir rejoindre notre communauté !",
            image: Image.asset(
              'assets/images/intro/4.png',
              width: 220,
              fit: BoxFit.contain,
            ),
          ),
        ],
        showNextButton: false,
        showDoneButton: false,
        dotsDecorator: DotsDecorator(
          size: Size(8, 8),
          activeSize: Size(30, 8),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
          ),
        ),
        globalFooter: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            spacing: 20,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  textStyle: Theme.of(
                    context,
                  ).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
                  foregroundColor: Colors.white,
                  backgroundColor: Theme.of(context).primaryColor,
                  fixedSize: Size.fromHeight(50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 0,
                ),
                onPressed: () async {
                  // TODO GO TO NEXT PAGE OR IMPLEMENT AUTH
                  // TODO CHECK HOW TO MAKE IMPLEMENTATION AS MODULES
                },
                child: Text("Connexion"),
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text:
                          "En utilisant cette application, vous acceptez nos ",
                      style: smallDefault,
                    ),
                    TextSpan(
                      text: "conditions d'utilisation",
                      style: smallLink,
                      recognizer:
                          TapGestureRecognizer()
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
                      recognizer:
                          TapGestureRecognizer()
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
