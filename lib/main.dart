import 'package:applite_templates/packages/flows/welcome-auth-flow/welcome_auth_flow.dart';
import 'package:applite_templates/packages/services/core/local_db.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:intl/date_symbol_data_local.dart';

import './screens/welcome_screen.dart';
// import './screens/app_screen.dart';
// import './screens/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  await Hive.initFlutter();

  // init hive here

  await Hive.openBox(hiveDBName);

  await dotenv.load(fileName: ".env");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color.fromARGB(255, 17, 20, 35),
      ),
      home: const WelcomeAuthFlow(
        welcomeScreen: WelcomeScreen(),
        appScreen: Scaffold(
          body: Center(
            child: Text("App Screen"),
          ),
        ),
        loginScreen: Scaffold(
          body: Center(
            child: Text("Login Screen"),
          ),
        ),
      ), // Replace with your starter screen
    );
  }
}
