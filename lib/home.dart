import 'dart:convert';
import 'dart:developer';

import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:fruitmarket/deskripsi.dart';
import 'package:fruitmarket/model/product.dart';
import 'package:fruitmarket/mycart.dart';
import 'package:http/http.dart' as http;
import 'package:fruitmarket/profil.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

int _currentindex = 0;

class _HomepageState extends State<Homepage> {
  Product? products1;

  fetchProduct() async {
    final respon = await http.get(
      Uri.parse('https://api.predic8.de/shop/products/'),
    );
    final product = Product.fromJson(
      jsonDecode(respon.body),
    );
    products1 = product;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    fetchProduct();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: CustomNavigationBar(
              elevation: 0,
              backgroundColor: Colors.white,
              currentIndex: _currentindex,
              onTap: (index) {
                setState(() {
                  _currentindex = index;
                });
              },
              items: [
                CustomNavigationBarItem(
                  icon: const Icon(
                    Icons.home_sharp,
                    color: Color(0xff86C649),
                  ),
                  title: const Text("Home"),
                ),
                CustomNavigationBarItem(
                  icon: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Homepage(),
                          ));
                    },
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MyCart(),
                          ),
                        );
                      },
                      child: const Icon(
                        Icons.shopping_cart,
                        color: Color(0xff86C649),
                      ),
                    ),
                  ),
                  title: const Text("My Cart"),
                ),
                CustomNavigationBarItem(
                  icon: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Profil(),
                        ),
                      );
                    },
                    child: const Icon(
                      Icons.person_pin,
                      color: Color(0xff86C649),
                    ),
                  ),
                  title: const Text("Profile"),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 70),
                  height: 50,
                  width: 370,
                  color: Colors.transparent,
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.menu,
                            size: 30,
                          )),
                      const SizedBox(
                        width: 100,
                      ),
                      const Text(
                        "Home",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Color(0xff86C649)),
                      ),
                      const SizedBox(
                        width: 100,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Profil(),
                              ));
                        },
                        child: const Icon(
                          Icons.account_circle,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(right: 250),
                      child: Text(
                        "Hello Ikramee!",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 170),
                      child: Text(
                        "What are you looking for?",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30, right: 30),
                        child: TextField(
                          decoration: InputDecoration(
                            // labelText: "Search Keyword",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            prefixIcon: const Icon(
                              Icons.search,
                              color: Color(0xff86C649),
                            ),
                            suffixIcon: const Icon(
                              Icons.filter_alt,
                              color: Color(0xff86C649),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xff86C649)),
                  width: 365,
                  height: 130,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Image.asset("assets/bg2.png"),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Exclusiv Offer",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                          const Text(
                            "Get 50% of on fruit",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          MaterialButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            minWidth: 20,
                            height: 35,
                            color: const Color(0xffF55959),
                            onPressed: () {},
                            child: const Text(
                              "Order Now",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 185, top: 10),
                  child: Text(
                    'Feature Product',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 420,
                  child: GridView.count(
                    shrinkWrap: false,
                    crossAxisCount: 2,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 2,
                    children: products1!.products!.map(
                      (pro) {
                        return Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Deskripsi(
                                        nama: pro.name.toString(),
                                        desk: pro.productUrl.toString()),
                                  ));
                            },
                            child: Card(
                              color: const Color.fromARGB(255, 247, 245, 245),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    pro.name.toString(),
                                    style: const TextStyle(fontSize: 20),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ).toList(),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
