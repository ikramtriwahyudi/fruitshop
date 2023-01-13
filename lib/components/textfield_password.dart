import 'package:flutter/material.dart';

class Customtextfieldpassword extends StatefulWidget {
  Customtextfieldpassword({super.key, required this.placeholder});

  String placeholder;

  @override
  State<Customtextfieldpassword> createState() =>
      _CustomtextfieldpasswordState();
}

class _CustomtextfieldpasswordState extends State<Customtextfieldpassword> {
  bool hidepassword = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 2, left: 20, right: 20),
      child: TextField(
        obscureText: hidepassword,
        decoration: InputDecoration(
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                hidepassword = !hidepassword;
              });
            },
            child: const Icon(
              Icons.visibility,
              color: Colors.black,
            ),
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          labelText: widget.placeholder,
        ),
      ),
    );
  }
}
