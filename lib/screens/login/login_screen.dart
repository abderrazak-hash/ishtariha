import 'package:flutter/material.dart';
import 'package:ishtariha/constants.dart';
import 'package:ishtariha/controllers/login_controller.dart';
import 'package:ishtariha/widgets.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<LoginController>(
        builder: (context, loginController, child) {
      return SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Expanded(
                  flex: 30,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Text(
                          '،مرحبا بك',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                          ),
                        ),
                        Text(
                          'تسجيل الدخول',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 45,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Input(
                        hintText: 'رقم الهاتف',
                        keyboardType: TextInputType.phone,
                        onChanged: (value) {
                          loginController.client.phone = value;
                        },
                      ),
                      Input(
                        hintText: 'كلمة المرور',
                        obscureText: true,
                        letterSpacing: 4,
                        onChanged: (value) {
                          loginController.client.password = value;
                        },
                      ),
                      Row(
                        children: [
                          CheckSquare(
                            value: loginController.keepConnected,
                            activeColor: mainClr,
                            onChanged: (value) {
                              loginController.switchKeepConnected(value);
                            },
                          ),
                          const Text(
                            'تذكرني',
                          ),
                        ],
                      ),
                      Button(
                        onPressed: () {
                          loginController.login(context);
                        },
                        label: 'تسجيل الدخول',
                        width: screenWidth * .6,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 25,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        ' هل لا تملك حسابا؟ ',
                      ),
                      InkWell(
                        onTap: () {
                          loginController.register(context);
                        },
                        child: const Text(
                          'أنشئ حسابا جديدا',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: mainClr,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
