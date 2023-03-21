import 'package:flutter/material.dart';
import 'package:fruitmarket/splash.dart';

class Logbutton extends StatelessWidget {
  Logbutton({super.key, required this.placeholder});

  String placeholder;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      minWidth: 385,
      height: 45,
      color: const Color(0xff82CD47),
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Splash(),
            ));
      },
      child: const Text(
        "Sign In",
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }
}
