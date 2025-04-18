import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:story_view/story_view.dart';
// import 'package:story/story.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  int index = 0;
  final StoryController controller = StoryController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          StoryView(
            repeat: true,
            progressPosition: ProgressPosition.top,
            inline: true,
            controller: controller,
            storyItems: [
              StoryItem.pageProviderImage(
                Image.asset("assets/images/welcome/PATTE.png").image,
                imageFit: BoxFit.cover,
              ),
              StoryItem.pageProviderImage(
                Image.asset("assets/images/welcome/PIZZA.png").image,
                imageFit: BoxFit.cover,
              ),
              StoryItem.pageProviderImage(
                Image.asset("assets/images/welcome/BURGER.png").image,
                imageFit: BoxFit.cover,
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 400,
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.black, Colors.transparent],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  stops: [0.2, 1.0],
                ),
              ),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Bougez moins,",
                      style: GoogleFonts.abrilFatface(
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                        fontSize: 42,
                        height: 1.2,
                        letterSpacing: 1.5,
                      ),
                    ),
                    Text(
                      "Mangez Plus",
                      style: GoogleFonts.abrilFatface(
                        fontWeight: FontWeight.w900,
                        color: Colors.white60,
                        fontSize: 42,
                        height: 1.2,
                        letterSpacing: 1.5,
                      ),
                    ),
                    const SizedBox(height: 30),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).primaryColor,
                        fixedSize: const Size.fromHeight(45),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/login');
                      },
                      label: const Text(
                        "Connectez-vous",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      icon: const Icon(Icons.login),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

final List<List<Widget>> texts = [
  [
    Text(
      "Bougez moins,",
      style: GoogleFonts.abrilFatface(
        fontWeight: FontWeight.w900,
        color: Colors.white,
        fontSize: 42,
        height: 1.2,
        letterSpacing: 1.5,
      ),
    ),
    Text(
      "Mangez Plus",
      style: GoogleFonts.abrilFatface(
        fontWeight: FontWeight.w900,
        // color: greenColor,
        fontSize: 42,
        height: 1.2,
        letterSpacing: 1.5,
      ),
    )
  ],
  [
    Text(
      "Bougez moins,",
      style: GoogleFonts.abrilFatface(
        fontWeight: FontWeight.w900,
        color: Colors.white,
        fontSize: 42,
        height: 1.2,
        letterSpacing: 1.5,
      ),
    ),
    Text(
      "Mangez Plus",
      style: GoogleFonts.abrilFatface(
        fontWeight: FontWeight.w900,
        // color: greenColor,
        fontSize: 42,
        height: 1.2,
        letterSpacing: 1.5,
      ),
    )
  ],
];
