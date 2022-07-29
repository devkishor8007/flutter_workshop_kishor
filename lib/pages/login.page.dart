import 'package:flutter/material.dart';
import 'package:flutter_workshop_kishor/pages/signup.page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: InkWell(
            onTap: () {
              // print('back to signup using push');
              // Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const SignupPage(),
                ),
              );
            },
            child: const Text('hello login')),
      ),
    );
  }
}
