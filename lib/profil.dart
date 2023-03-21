import 'package:flutter/material.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';

class Profil extends StatefulWidget {
  const Profil({super.key});

  @override
  State<Profil> createState() => _ProfilState();
}

List nama = [
  {
    "icon": const Icon(Icons.account_circle_outlined),
    "nama": const Text("User Information"),
  },
  {
    "icon": const Icon(Icons.shopping_bag_outlined),
    "nama": const Text("My Cart"),
  },
  {
    "icon": const Icon(Icons.favorite_border_outlined),
    "nama": const Text("My Favorit"),
  },
  {
    "icon": const Icon(Icons.notifications),
    "nama": const Text("Notification"),
  },
  {
    "icon": const Icon(Icons.help_center_outlined),
    "nama": const Text("Help"),
  },
  {
    "icon": const Icon(Icons.logout_outlined),
    "nama": const Text("Logout"),
  },
];

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 90, right: 290),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back_ios),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(400.0),
              child: Image.asset(
                "assets/gojo.png",
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "Ikramee",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          const Text(
            "gojo@gmail.com",
            style: TextStyle(fontSize: 15),
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            children: const [
              Text(
                "Settings",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
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
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 20,
                          offset: Offset(0, 5),
                        )
                      ]),
                  height: 50,
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.only(left: 50, right: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        nama[index]["icon"],
                        nama[index]["nama"],
                        const Icon(Icons.arrow_circle_right_outlined)
                      ],
                    ),
                  )),
                ),
              );
            }),
            itemCount: nama.length,
          ),
          const SizedBox(
            height: 18,
          ),
        ],
      ),
    );
  }
}
