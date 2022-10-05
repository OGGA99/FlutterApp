import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/base/routes.dart';
import 'package:flutter_application_1/pages/loginpage/login_styles.dart';

import '../../base/reg_exp.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool showPassword = false;
  TextEditingController usernameCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Container(
      color: LoginStyles.mainColor.withOpacity(0.8),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                height: 213,
                width: 157,
                child: Image.asset('assets/images/loginpageimage.png')),
            _fields(context),
            const SizedBox(
              height: 100,
              width: 100,
            ),
            SizedBox(
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith(
                        (states) => Colors.red),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                            side: BorderSide(color: Colors.red)))),
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacementNamed(AppRoutes.description);
                },
                child: const Text("Login"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _fields(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: 25,
      ),
      padding: const EdgeInsets.only(
        right: 25,
        left: 25,
        top: 40,
        bottom: 50,
      ),
      child: Column(
        children: [
          Text(
            'Log In'.toUpperCase(),
            style: const TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w600,
              color: LoginStyles.mainColor,
            ),
          ),
          const SizedBox(height: 30),
          TextField(
            controller: usernameCtrl,
            decoration: const InputDecoration(
              labelText: 'Email',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10),
          TextField(
            controller: passwordCtrl,
            obscureText: !showPassword,
            decoration: InputDecoration(
              labelText: 'Password',
              suffixIcon: IconButton(
                onPressed: _onShowPassword,
                icon: showPassword
                    ? const Icon(
                        Icons.visibility,
                      )
                    : const Icon(
                        Icons.visibility_off,
                      ),
              ),
              border: const OutlineInputBorder(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _dialog(
    context, {
    required String title,
    String? content,
  }) {
    return AlertDialog(
      title: Text(title),
      content: Text(content ?? 'Some of the credentials are empty'),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('OK'),
        ),
      ],
    );
  }

  void _onLogin(context) {
    final regExp = RegExp(RegularExpressions.email);

    Navigator.of(context).pushReplacementNamed(AppRoutes.description);
    return;
  }

  void _onShowPassword() {
    setState(() {
      showPassword = !showPassword;
    });
  }
}
