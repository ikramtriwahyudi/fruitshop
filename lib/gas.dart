import 'package:flutter/material.dart';

class Gas extends StatefulWidget {
  Gas({super.key});

  List name = ["sangkala", "ass"];

  @override
  State<Gas> createState() => _GasState();
}

class _GasState extends State<Gas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("listview"),
      ),
      body: Container(
        child: Column(
          children: [Text("data")],
        ),
      ),
    );
  }
}
