import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:fruitmarket/deskripsi.dart';
import 'package:fruitmarket/gas.dart';
import 'package:fruitmarket/profil.dart';

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
    {
      'image': 'assets/apel.png',
      "Nama": 'Apel',
      "Harga": '15.000',
      "Berat": '1 Kg',
      "Desk":
          'Apel adalah buah berdaging yang berwarna merah, kuning, atau hijau dan memiliki biji di dalamnya. Rasa buah apel bervariasi, mulai dari asam hingga manis. Buah ini tumbuh pada pohon apel yang merupakan tanaman yang berasal dari Asia Barat dan Eropa. Apel dikenal sebagai sumber serat, vitamin C, dan antioksidan yang baik untuk kesehatan.'
    },
    {
      'image': 'assets/nanas.png',
      "Nama": 'Nanas',
      "Harga": '20.000',
      "Berat": '1 Kg',
      "Desk":
          'Nanas adalah buah berdaging yang berwarna kuning keemasan dan memiliki daging yang lembut, manis, dan sedikit asam. Buah ini memiliki kerak yang keras dan tajam di sekitarnya dan memiliki biji-biji kecil di dalamnya. Nanas tumbuh pada pohon nanas yang merupakan tanaman tropis yang berasal dari Amerika Selatan. Buah ini kaya akan vitamin C, mangan, dan serat, serta mengandung enzim bromelain yang dapat membantu dalam proses pencernaan.'
    },
    {
      'image': 'assets/delima.png',
      "Nama": 'Delima',
      "Harga": '18.000',
      "Berat": '1 Kg',
      "Desk":
          'Delima adalah buah beri yang berwarna merah atau hitam yang berukuran kecil dan memiliki biji di dalamnya. Rasa buah delima ini asam dan manis, dan memiliki kulit yang kenyal. Delima tumbuh pada pohon delima yang merupakan tanaman yang berasal dari wilayah tropis. Buah ini kaya akan vitamin C, antioksidan, dan asam lemak omega-3. Delima juga mengandung vitamin B6, kalsium, fosfor, dan zat besi yang baik untuk kesehatan.'
    },
    {
      'image': 'assets/jeruk.png',
      "Nama": 'Jeruk',
      "Harga": '23.000',
      "Berat": '1 Kg',
      "Desk":
          'Jeruk adalah buah berdaging yang berwarna kuning atau oranye dan memiliki biji-biji di dalamnya. Rasa jeruk manis dan asam. Buah ini tumbuh pada pohon jeruk yang merupakan tanaman yang berasal dari Asia Selatan dan Asia Tenggara. Jeruk kaya akan vitamin C, folat, dan kalium, serta mengandung flavonoid yang dapat membantu mencegah penyakit jantung dan kanker. Jeruk juga sangat baik dikonsumsi untuk menjaga kesehatan kulit, melindungi tubuh dari infeksi, dan meningkatkan sistem kekebalan tubuh.'
    },
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
                    icon: const Icon(Icons.add_shopping_cart_outlined),
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
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Profil(),
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
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: ((context) => Gas()),
                                ),
                              );
                            },
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
                // const Padding(
                //   padding: EdgeInsets.only(right: 260, top: 10),
                //   child: Text(
                //     "Categories",
                //     style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                //   ),
                // ),
                // const SizedBox(
                //   height: 30,
                // ),
                // SingleChildScrollView(
                //   scrollDirection: Axis.horizontal,
                //   child: Row(
                //     // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //     children: [
                //       for (int index = 0; index < buah.length; index++)
                //         Column(
                //           children: [
                //             GestureDetector(
                //               onTap: () {
                //                 log('Tekan');
                //               },
                //               child: Container(
                //                 margin:
                //                     const EdgeInsets.symmetric(horizontal: 18),
                //                 height: 40,
                //                 width: 40,
                //                 color: Colors.amber,
                //                 child: Image.asset(buah[index]['image']),
                //               ),
                //             ),
                //             const SizedBox(
                //               height: 10,
                // //             ),
                //             Text(buah[index]['lable']),
                //           ],
                //         ),
                //     ],
                //   ),
                // ),
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
                SizedBox(
                  height: 420,
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
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Deskripsi(
                                      gambar: grid[index1]["image"],
                                      harga: grid[index1]["Harga"],
                                      nama: grid[index1]["Nama"],
                                      desk: grid[index1]["Desk"],
                                    ),
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
                                  // Row(
                                  //   mainAxisAlignment: MainAxisAlignment.end,
                                  //   children: [Icon(Icons.favorite)],
                                  // ),
                                  Image.asset(grid[index1]['image']),
                                  // const SizedBox(
                                  //   height: 10,
                                  // ),
                                  Text(
                                    grid[index1]["Berat"],
                                    style: const TextStyle(fontSize: 15),
                                  ),
                                  Text(
                                    grid[index1]["Harga"],
                                    style: const TextStyle(
                                        color: Color(0xff86C649),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    grid[index1]["Nama"],
                                    style: const TextStyle(fontSize: 20),
                                  ),
                                ],
                              ),
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
