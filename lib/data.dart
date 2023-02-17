import 'package:flutter/material.dart';

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

List plus = [
  {
    'plus': Row(
      children: [
        SizedBox(
          width: 50,
          height: 50,
          child: MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: const Color(0xffAEDC81),
            minWidth: 5,
            onPressed: () {},
            child: const Center(
              child: Icon(
                Icons.remove,
                size: 15,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        const Text(
          "1kg",
          style: TextStyle(fontSize: 15),
        ),
        const SizedBox(
          width: 10,
        ),
        SizedBox(
          width: 50,
          height: 50,
          child: MaterialButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            minWidth: 5,
            color: const Color(0xffAEDC81),
            onPressed: () {},
            child: const Center(
              child: Icon(
                Icons.add,
                size: 15,
              ),
            ),
          ),
        ),
      ],
    ),
  }
];
