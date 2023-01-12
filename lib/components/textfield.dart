import 'package:flutter/material.dart';

class Customtextfield extends StatelessWidget {
  Customtextfield({super.key, required this.placeholder});

  String placeholder;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
      child: TextField(
        decoration: InputDecoration(
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
              Radius.circular(15),
            )),
            labelText: placeholder),
      ),
    );
  }
}
