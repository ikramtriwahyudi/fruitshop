import 'package:flutter/material.dart';

import 'package:fruitmarket/components/textfield.dart';
import 'package:fruitmarket/components/textfield_password.dart';
import 'package:fruitmarket/login.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 20, bottom: 10),
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
                  "Sign Up",
                  style: TextStyle(
                      color: Color(0xff689C36),
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 325),
            child: const Text(
              "Name",
              style: TextStyle(fontSize: 20, color: Colors.black54),
            ),
          ),
          Customtextfield(
            placeholder: "",
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            margin: const EdgeInsets.only(right: 275),
            child: const Text(
              "Enter Email",
              style: TextStyle(fontSize: 20, color: Colors.black54),
            ),
          ),
          Customtextfield(placeholder: ""),
          const SizedBox(
            height: 5,
          ),
          Container(
            margin: const EdgeInsets.only(right: 290),
            child: const Text(
              "Password",
              style: TextStyle(fontSize: 20, color: Colors.black54),
            ),
          ),
          Customtextfieldpassword(placeholder: ""),
          const SizedBox(
            height: 5,
          ),
          Container(
            margin: const EdgeInsets.only(right: 215),
            child: const Text(
              "Confirm Password",
              style: TextStyle(fontSize: 20, color: Colors.black54),
            ),
          ),
          Customtextfieldpassword(placeholder: ""),
          const SizedBox(
            height: 20,
          ),
          MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            minWidth: 385,
            height: 45,
            color: const Color(0xff82CD47),
            onPressed: () {},
            child: const Text(
              "Sign Up",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Already have an account?",
                style: TextStyle(fontSize: 18),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      (context),
                      MaterialPageRoute(
                        builder: (context) => Login(),
                      ));
                },
                child: const Text(
                  "Sign In",
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
