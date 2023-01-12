import 'package:flutter/material.dart';
import 'package:fruitmarket/components/logbutton.dart';
import 'package:fruitmarket/components/textfield.dart';
import 'package:fruitmarket/components/textfield_password.dart';

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
                        Navigator.pop(context);
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
          SizedBox(
            height: 20,
          ),
          Logbutton(placeholder: "Sign In"),
        ],
      )),
    );
  }
}
