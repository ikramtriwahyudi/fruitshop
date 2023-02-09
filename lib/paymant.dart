import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: const Text("Payment"),
      ),
      body: Column(
        children: [
          Container(
            width: 357,
            height: 94,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.amber),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Amount to pay",
                  style: TextStyle(fontSize: 20),
                ),
                Text("data"),
                Text(
                  "Amount to pay",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
