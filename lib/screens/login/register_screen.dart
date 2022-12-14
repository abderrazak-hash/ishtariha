import 'package:flutter/material.dart';
import 'package:ishtariha/constants.dart';
import 'package:ishtariha/controllers/register_controller.dart';
import 'package:ishtariha/widgets.dart';
import 'package:provider/provider.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<RegisterController>(
      builder: (context, registerController, child) {
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
                            '،أهلا بك',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0,
                            ),
                          ),
                          Text(
                            'تسجيل جديد',
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
                            registerController.client.phone = value;
                          },
                        ),
                        Input(
                          hintText: 'كلمة المرور',
                          obscureText: true,
                          letterSpacing: 4,
                          onChanged: (value) {
                            registerController.client.password = value;
                          },
                        ),
                        Button(
                          onPressed: () {
                            registerController.register(context);
                          },
                          label: 'تسجيل',
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
                          ' هل تملك حسابا؟ ',
                        ),
                        InkWell(
                          onTap: () {
                            registerController.login(context);
                          },
                          child: const Text(
                            'تسجيل الدخول',
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
      },
    );
  }
}
