import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 80,
              color: Colors.amber,
              child: CustomNavigationBar(
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
          Column(
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
            ],
          ),
        ],
      ),
    );
  }
}
