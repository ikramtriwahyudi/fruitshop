import 'package:flutter/material.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:fruitmarket/data.dart';
import 'package:fruitmarket/mycart.dart';

class Deskripsi extends StatefulWidget {
  Deskripsi({
    super.key,
    required this.gambar,
    required this.harga,
    required this.nama,
    required this.desk,
  });

  String gambar;
  String harga;
  String nama;
  String desk;

  @override
  State<Deskripsi> createState() => _DeskripsiState();
}

class _DeskripsiState extends State<Deskripsi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 80,
                  color: Colors.transparent,
                  child: CustomNavigationBar(
                    onTap: (value) {},
                    items: [
                      CustomNavigationBarItem(
                        icon: const Icon(Icons.home),
                      ),
                      CustomNavigationBarItem(
                        icon: const Icon(Icons.shopping_cart),
                      ),
                      CustomNavigationBarItem(
                        icon: const Icon(Icons.lightbulb_outline),
                      ),
                      CustomNavigationBarItem(
                        icon: const Icon(Icons.search),
                      ),
                      CustomNavigationBarItem(
                        icon: const Icon(Icons.account_circle),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Color(0xffC4F594),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(150),
                    bottomRight: Radius.circular(150),
                  ),
                ),
                height: 350,
                width: double.infinity,
                child: Container(
                  margin: const EdgeInsets.only(bottom: 170, right: 330),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 70),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    widget.gambar,
                    scale: 0.4,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 40, top: 20),
                  child: Text(
                    widget.nama,
                    style: const TextStyle(fontSize: 30),
                  ),
                ),
              ),
              //disini*/
              Container(
                padding: const EdgeInsets.only(top: 20, right: 40),
                child: plus[0]["plus"],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 220),
            child: Column(
              children: [
                const SizedBox(
                  height: 5,
                ),
                Container(
                  margin: const EdgeInsets.only(right: 75),
                  child: const Text(
                    "Fruits",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Row(
                    children: [
                      const Text(
                        "4.0",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      RatingBar.builder(
                        initialRating: 5,
                        minRating: 0,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 20,
                        itemPadding:
                            const EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          (rating);
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  margin: const EdgeInsets.only(right: 25),
                  child: Text(
                    'Rp${widget.harga}',
                    style: const TextStyle(
                        color: Color(0xff86C649),
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 230, top: 5),
                  child: Text(
                    "Descriptions",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, left: 30, right: 20),
                  child: Text(
                    widget.desk,
                    style: const TextStyle(fontSize: 17),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  MaterialButton(
                    color: const Color(0xff82CD47),
                    minWidth: 160,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyCart(),
                          ));
                    },
                    child: Row(
                      children: const [
                        Icon(
                          Icons.shopping_bag,
                          size: 30,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Add to Cart",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              MaterialButton(
                color: const Color(0xff82CD47),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                minWidth: 160,
                onPressed: () {},
                child: const Text(
                  "Buy Now",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
