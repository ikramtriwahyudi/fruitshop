import 'package:flutter/material.dart';
import 'package:fruitmarket/login.dart';
import 'package:google_fonts/google_fonts.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 80),
              child: Image.asset("assets/bg1.png"),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Fruit Shop",
            style: GoogleFonts.inter(fontWeight: FontWeight.bold, fontSize: 40),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "By Ikramee",
            style: GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "The easiest way to buy your Fruit shopping",
            style: GoogleFonts.inter(fontSize: 15, color: Colors.black45),
          ),
          const SizedBox(
            height: 20,
          ),
          MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            minWidth: 200,
            height: 45,
            color: const Color(0xff82CD47),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Login(),
                  ));
            },
            child: const Text(
              "Get Started",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
