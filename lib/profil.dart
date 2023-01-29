import 'package:flutter/material.dart';

class Profil extends StatefulWidget {
  const Profil({super.key});

  @override
  State<Profil> createState() => _ProfilState();
}

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
                  child: const Icon(Icons.arrow_back_ios))),
          const SizedBox(
            height: 40,
          ),
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(400.0),
              child: Image.asset(
                "assets/foto1.JPG",
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
            "Ikram triwahyudi",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          const Text(
            "ikramtriwahyudi@gmail.com",
            style: TextStyle(fontSize: 15),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            child: Column(),
          )
        ],
      ),
    );
  }
}
