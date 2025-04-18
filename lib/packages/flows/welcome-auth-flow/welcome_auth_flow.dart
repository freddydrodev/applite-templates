import 'package:applite_templates/packages/models/core/customer_model.dart';
import 'package:applite_templates/packages/services/core/local_db.dart';
import 'package:flutter/material.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';

class WelcomeAuthFlow extends StatelessWidget {
  static const String routeName = '/welcome';

  final Widget welcomeScreen;
  final Widget appScreen;
  final Widget loginScreen;

  const WelcomeAuthFlow({
    super.key,
    required this.appScreen,
    required this.loginScreen,
    required this.welcomeScreen,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: localDB.listenable(),
      builder: (context, box, widget) {
        final bool welcomeSeen =
            localDB.get('WelcomeSeen', defaultValue: false) ?? false;

        final CustomerModel? customer = localDB.get('Customer');

        if (customer == null) {
          return !welcomeSeen ? welcomeScreen : loginScreen;
        } else {
          return appScreen;
        }
      },
    );
  }
}
