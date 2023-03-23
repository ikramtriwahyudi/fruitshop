import 'package:flutter/material.dart';
import 'package:fruitmarket/components/textfield.dart';
import 'package:fruitmarket/components/textfield_password.dart';
import 'package:fruitmarket/home.dart';
import 'package:fruitmarket/signup.dart';
import 'package:fruitmarket/splash.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Splash(),
                            ));
                      },
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: Color(0xff689C36),
                      ),
                    ),
                  ],
                ),
                Image.asset("assets/logo.png"),
                const Text(
                  "Sign In",
                  style: TextStyle(
                      color: Color(0xff689C36),
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.only(right: 325),
            child: const Text(
              "Name",
              style: TextStyle(fontSize: 20, color: Colors.black54),
            ),
          ),
          Customtextfield(
            placeholder: 'username',
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.only(right: 290),
            child: const Text(
              "Password",
              style: TextStyle(fontSize: 20, color: Colors.black54),
            ),
          ),
          Customtextfieldpassword(placeholder: "password"),
          const SizedBox(
            height: 30,
          ),
          MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            minWidth: 385,
            height: 45,
            color: const Color(0xff82CD47),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Homepage(),
                ),
              );
            },
            child: const Text(
              "Sign In",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "don't have account?",
                style: TextStyle(fontSize: 18),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Signup(),
                      ));
                },
                child: const Text(
                  "Sign Up",
                  style: TextStyle(color: Color(0xff689C36), fontSize: 18),
                ),
              ),
            ],
          )
        ],
      )),
    );
  }
}
