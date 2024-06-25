import 'package:flutter/material.dart';
import 'package:scholar_chat/screens/login.dart';
import 'package:scholar_chat/screens/signup.dart';

void main() {
  runApp(const CatalanChat());
}

class CatalanChat extends StatelessWidget {
  const CatalanChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        LoginPage.id : (context)=> LoginPage(),
      SignUp.id : (context)=> SignUp(),
      },
      initialRoute: LoginPage.id,
    );
  }
}