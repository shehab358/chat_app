import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyButton extends StatelessWidget {
  MyButton({Key? key, required this.color, required this.text})
      : super(key: key);
  Color color;
  String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      width: double.infinity,
      height: 60,
      child: Center(
        child: Text(text),
      ),
    );
  }
}
