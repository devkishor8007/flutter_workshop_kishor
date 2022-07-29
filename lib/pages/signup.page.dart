import 'package:flutter/material.dart';
import 'package:flutter_workshop_kishor/pages/login.page.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool valueCheckBox = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            // shrinkWrap: true,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  'Signup',
                  style: GoogleFonts.lato(
                    fontSize: 21,
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(24),
                  ),
                  child: const Icon(Icons.clear),
                ),
              ]),
              OutlinedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'G',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Sign up with Gmail',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Divider(
                thickness: 1.5,
              ),
              const SizedBox(
                height: 15,
              ),

              // form
              const Text('Name'),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'enter your name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: const BorderSide(
                      width: 2.5,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),

              const Text('Email'),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'enter your email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: const BorderSide(
                      width: 2.5,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),

              const Text('Password'),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.remove_red_eye),
                  hintText: 'at least 8 character password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: const BorderSide(
                      width: 2.5,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    color: Colors.grey,
                    width: 60.0,
                    height: 2.0,
                  ),
                  Container(
                    color: Colors.grey,
                    width: 60.0,
                    height: 2.0,
                  ),
                  Container(
                    color: Colors.grey,
                    width: 60.0,
                    height: 2.0,
                  ),
                  Container(
                    color: Colors.grey,
                    width: 60.0,
                    height: 2.0,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Checkbox(
                      value: valueCheckBox,
                      onChanged: (val) {
                        setState(() {
                          valueCheckBox = val!;
                        });
                      }),
                  Row(
                    children: const [
                      Text('I agree with'),
                      SizedBox(
                        width: 2.3,
                      ),
                      Text(
                        'Terms',
                        style: TextStyle(color: Colors.blue),
                      ),
                      SizedBox(
                        width: 2.3,
                      ),
                      Text('and'),
                      SizedBox(
                        width: 2.3,
                      ),
                      Text(
                        'Privacy',
                        style: TextStyle(color: Colors.blue),
                      )
                    ],
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text('Signup'),
              ),
              const SizedBox(
                height: 15.0,
              ),
              const Divider(
                thickness: 3.2,
              ),
              const SizedBox(
                height: 15.0,
              ),
              const Text(
                'Already have an account?',
                textAlign: TextAlign.center,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const LoginPage(),
                    ),
                  );
                },
                child: const Text(
                  'Log in',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
