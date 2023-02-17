import 'package:flutter/material.dart';
import 'package:fruitmarket/trackorder.dart';

class Orderconfir extends StatefulWidget {
  const Orderconfir({super.key});

  @override
  State<Orderconfir> createState() => _OrderconfirState();
}

class _OrderconfirState extends State<Orderconfir> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/tick 1.png"),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Order Confirmed",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            const Text("You order has been confirmed"),
            const Text("Will be delivered soon"),
            const SizedBox(
              height: 20,
            ),
            const Text("Order Id:10000090"),
            const SizedBox(
              height: 90,
            ),
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              minWidth: 345,
              height: 45,
              color: const Color(0xff82CD47),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Trackorder(),
                  ),
                );
              },
              child: const Text(
                "Track your order",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
