import 'package:flutter/material.dart';
import 'package:fruitmarket/data.dart';
import 'package:fruitmarket/orderconfirmation.dart';

class MyCart extends StatefulWidget {
  const MyCart({
    super.key,
  });

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        title: const Text("My Cart"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 600,
            child: ListView.builder(
              itemCount: grid.length,
              itemBuilder: ((context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                    right: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 150,
                        child: Image.asset(
                          grid[index]['image'],
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            grid[index]['Nama'],
                          ),
                          Text(
                            grid[index]['Harga'],
                          ),
                          Text(
                            grid[index]['Berat'],
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 65,
                      ),
                      SizedBox(
                        child: plus[0]["plus"],
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
          MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            minWidth: 350,
            height: 45,
            color: const Color(0xff82CD47),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OrderConfirmation(),
                  ));
            },
            child: const Text(
              "Check Out",
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
