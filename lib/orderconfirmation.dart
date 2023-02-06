import 'package:flutter/material.dart';
import 'package:fruitmarket/data.dart';
import 'package:fruitmarket/profil.dart';

class OrderConfirmation extends StatefulWidget {
  const OrderConfirmation({super.key});

  @override
  State<OrderConfirmation> createState() => _OrderConfirmationState();
}

List confirm = [
  {
    "icon": const Icon(Icons.location_on_outlined),
    "tes": const Text("Makassar"),
  },
  {
    "icon": const Icon(Icons.phone_android_outlined),
    "tes": const Text("09569696969"),
  },
  {
    "icon": const Icon(Icons.mail),
    "tes": const Text("ikram@gmail.com"),
  },
];

List confirm2 = [
  {
    "icon": const Icon(Icons.delivery_dining_outlined),
    "tes": const Text("Delivery"),
  },
  {
    "icon": const Icon(Icons.payment),
    "tes": const Text("Payment method"),
  },
  {
    "icon": const Icon(Icons.discount_outlined),
    "tes": const Text("Total cash"),
  },
];

class _OrderConfirmationState extends State<OrderConfirmation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: const Text("Order Confirmation"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          const Text(
            "Your details",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          ListView.builder(
            shrinkWrap: true,
            itemBuilder: ((context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 50, right: 50, top: 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  height: 50,
                  width: 100,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 0),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          confirm[index]["icon"],
                          confirm[index]["tes"],
                          const Icon(Icons.edit),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }),
            itemCount: confirm.length,
          ),
          const Text(
            "About order",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          ListView.builder(
            shrinkWrap: true,
            itemBuilder: ((context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 50, right: 50, top: 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  height: 50,
                  width: 100,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 0),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          confirm2[index]["icon"],
                          confirm2[index]["tes"],
                          const Icon(Icons.arrow_circle_right_outlined),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }),
            itemCount: confirm2.length,
          ),
          MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            minWidth: 385,
            height: 45,
            color: const Color(0xff82CD47),
            onPressed: () {},
            child: const Text(
              "Confirm",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
