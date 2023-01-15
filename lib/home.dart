import 'dart:developer';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List buah = [
    {'image': 'assets/Rectangle 9.png', "lable": 'fruit'},
    {'image': 'assets/Rectangle 10.png', "lable": 'Meat'},
    {'image': 'assets/Rectangle 11.png', "lable": 'Rice'},
    {'image': 'assets/Rectangle 12.png', "lable": 'Meals'},
    {'image': 'assets/Rectangle 13.png', "lable": 'Bakery'},
  ];

  List grid = [
    {'image': 'assets/apel.png', "lable": 'Apel'},
    {'image': 'assets/nanas.png', "lable": 'Nanas'},
    {'image': 'assets/delima.png', "lable": 'Delima'},
    {'image': 'assets/jeruk.png', "lable": 'Jeruk'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
                      const Icon(
                        Icons.account_circle,
                        size: 30,
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
                            labelText: "Search Keyword",
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
                const Padding(
                  padding: EdgeInsets.only(right: 260, top: 10),
                  child: Text(
                    "Categories",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      for (int index = 0; index < buah.length; index++)
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                log('Tekan');
                              },
                              child: Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 18),
                                height: 40,
                                width: 40,
                                color: Colors.amber,
                                child: Image.asset(buah[index]['image']),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(buah[index]['lable']),
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
                    "Featured Products",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 290,
                  child: GridView.count(
                    shrinkWrap: false,
                    crossAxisCount: 2,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 2,
                    children: [
                      for (int index1 = 0; index1 < grid.length; index1++)
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                          ),
                          child: Card(
                            color: Colors.white70,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(grid[index1]['image']),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  grid[index1]['lable'],
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        )
                    ],
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
