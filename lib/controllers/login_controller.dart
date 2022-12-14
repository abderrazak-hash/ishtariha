import 'package:flutter/material.dart';
import 'package:ishtariha/models/client/client.dart';
import 'package:ishtariha/screens/login/register_screen.dart';
import 'package:ishtariha/screens/nav_bar.dart';

class LoginController extends ChangeNotifier {
  late Client client;
  bool keepConnected = false;

  LoginController() {
    client = Client();
  }

  void switchKeepConnected(value) {
    keepConnected = value;
    notifyListeners();
  }

  void login(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const IshtarihaNaviagtion(),
      ),
    );
  }

  void register(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const RegisterScreen(),
      ),
    );
  }
}
