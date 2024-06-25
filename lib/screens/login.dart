import 'package:flutter/material.dart';
import 'package:scholar_chat/components/TextField.dart';
import 'package:scholar_chat/components/button.dart';
import 'package:scholar_chat/components/constants.dart';
import 'package:scholar_chat/screens/signup.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
static String id = "Login";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: kGradient
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/cdnlogo.com_fc-barcelona.png",
                height: 150,
                width: 150,
              ),
              const Text(
                "Catalan Chat",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 32,
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                hint: "Email",
                icon: Icons.email,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextField(
                hint: "Password",
                icon: Icons.lock,
              ),
              const SizedBox(
                height: 32,
              ),
              MyButton(color: Colors.white, text: "LOGIN"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(color: Colors.white),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, SignUp.id);
                    },
                    child: const Text(
                      "Sign up",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
