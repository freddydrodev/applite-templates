import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const double defaultSpacing = 20;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 227, 207, 190),
      body: SafeArea(
        child: Column(
          spacing: defaultSpacing,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Center(
                child: SizedBox(
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image.asset(
                      'assets/images/welcome/watch.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                spacing: defaultSpacing,
                children: [
                  Text(
                    "Now on Apple Watch",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: const Color.fromARGB(255, 73, 46, 34),
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Text(
                    "Casino is now available on Apple Watch. You can play casino games on your Apple Watch. It's a great way to play casino games on your Apple Watch.",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: const Color.fromARGB(255, 73, 46, 34),
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 239, 129, 66),
                      foregroundColor: Colors.white,
                      elevation: 0,
                      fixedSize: const Size.fromHeight(50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/login');
                    },
                    child: const Text('Get Started'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
