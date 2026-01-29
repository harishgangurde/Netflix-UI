import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List<Map> moviesList = [
    {
      'category': "Horror",
      "poster1": "https://m.media-amazon.com/images/I/818tLZ4J13S.jpg",
      "poster2":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpE8pTzRiUGVTvE6v3KLvv03E3dSkrXgcI_g&s",
      "poster3":
          "https://intheposter.com/cdn/shop/products/the-frightening-in-the-poster-1_1024x1024.jpg?v=1733910561",
    },
    {
      'category': "Comedy",
      "poster1":
          "https://i.pinimg.com/564x/19/48/41/194841466837b8ba3b9c755ae4610908.jpg",
      "poster2":
          "https://cdn.shopify.com/s/files/1/1057/4964/products/Home-Alone-Vintage-Movie-Poster-Original_866d9d28_368x.jpg?v=1741732804",
      "poster3":
          "https://preview.redd.it/movie-poster-for-a-1990s-2000s-comedy-movie-starter-pack-v0-olvjg8trsm4c1.jpeg?width=1079&format=pjpg&auto=webp&s=619c1576f5b4b2dbdd08eba9338e981a9550725b",
    },
    {
      'category': "Suspense",
      "poster1":
          "https://cdn.posteritati.com/posters/000/000/064/004/28-days-later-sm-web.jpg",
      "poster2":
          "https://c8.alamy.com/comp/PM879D/tristar-pictures-film-district-and-end-game-entertainments-action-thriller-looper-poster-PM879D.jpg",
      "poster3":
          "https://i.pinimg.com/564x/26/10/83/261083cd1496ba590f7ace2c39b3d420.jpg",
    },
    {
      'category': "Action",
      "poster1":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTTpzMVCKn_fEA3Q_E1B6su9C_nGT-r14Vcw&s",
      "poster2":
          "https://i.pinimg.com/736x/6e/d8/86/6ed8865d6712fb9f41c14f11e553bdf3.jpg",
      "poster3":
          "https://cdn.prod.website-files.com/6009ec8cda7f305645c9d91b/66a4263d01a185d5ea22eeec_6408f6e7b5811271dc883aa8_batman-min.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Netflix App",
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Image.network(
            "https://platform.theverge.com/wp-content/uploads/sites/2/chorus/uploads/chorus_asset/file/15844974/netflixlogo.0.0.1466448626.png?quality=90&strip=all&crop=1.2535702951444%2C0%2C97.492859409711%2C100&w=2400",
            width: 40,
            height: 40,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(moviesList.length, (index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${moviesList[index]['category']}",
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            width: 150,
                            height: 230,
                            margin: const EdgeInsets.all(10),
                            child: Image.network(moviesList[index]['poster1']),
                          ),
                          Container(
                            width: 150,
                            height: 230,
                            margin: const EdgeInsets.all(10),
                            child: Image.network(moviesList[index]['poster2']),
                          ),
                          Container(
                            width: 150,
                            height: 230,
                            margin: const EdgeInsets.all(10),
                            child: Image.network(moviesList[index]['poster3']),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}
