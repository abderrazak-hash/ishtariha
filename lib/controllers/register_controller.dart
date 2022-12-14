import 'package:flutter/material.dart';
import 'package:ishtariha/models/client/client.dart';
import 'package:ishtariha/screens/login/login_screen.dart';
import 'package:ishtariha/screens/nav_bar.dart';

class RegisterController extends ChangeNotifier {
  late Client client;

  RegisterController() {
    client = Client();
  }

  void register(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const IshtarihaNaviagtion(),
      ),
    );
  }

  void login(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      ),
    );
  }
}
