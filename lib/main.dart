import 'package:flutter/material.dart';
import 'package:ishtariha/constants.dart';
import 'package:ishtariha/controllers/login_controller.dart';
import 'package:ishtariha/controllers/navbar_controller.dart';
import 'package:ishtariha/controllers/register_controller.dart';
import 'package:ishtariha/screens/login/login_screen.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MPayApp());
}

class MPayApp extends StatelessWidget {
  const MPayApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<LoginController>(
          create: (context) => LoginController(),
        ),
        ChangeNotifierProvider<RegisterController>(
          create: (context) => RegisterController(),
        ),
        ChangeNotifierProvider<NavigationController>(
          create: (context) => NavigationController(),
        ),
      ],
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            fontFamily: 'Muli',
          ),
          home: const IshtarihaScreen(),
        );
      },
    );
  }
}

class IshtarihaScreen extends StatelessWidget {
  const IshtarihaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return const LoginScreen();
  }
}
