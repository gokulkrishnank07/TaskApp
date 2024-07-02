import 'package:flutter/material.dart';
import 'package:flutter_application_1/chat_dashboard/filter_lists.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewAll extends StatefulWidget {
  const ViewAll({super.key});

  @override
  State<ViewAll> createState() => _ViewAllState();
}

class _ViewAllState extends State<ViewAll> {
  List<ProductCard> productList = [
    ProductCard(
      image: "images/gamer.jpg",
      name: "Z1 Gaming",
      subText: "ONLINE GAMER",
      banner: 'images/11.jpg',
    ),
    ProductCard(
        image: "images/football.jpg",
        name: "Jickson",
        subText: "Foot Baller",
        banner: 'images/10.jpg'),
    ProductCard(
      image: 'images/travel.jpg',
      name: "M Jhone",
      subText: "travelist",
      banner: 'images/6.jpg',
    ),
    ProductCard(
      image: 'images/copy.jpg',
      name: "J Michel",
      subText: "Copy Writer",
      banner: 'images/7.jpg',
    ),
    ProductCard(
      image: 'images/tmt.jpg',
      name: "Peter",
      subText: "constructor",
      banner: 'images/cons.jpg',
    ),
    ProductCard(
      image: 'images/men.jpg',
      name: "Adam",
      subText: "Online Webiner",
      banner: 'images/5.jpg',
    ),
    ProductCard(
      image: 'images/crypto.jpg',
      name: " William",
      subText: "Crypto Miner",
      banner: 'images/8.jpg',
    ),
    ProductCard(
      image: 'images/furniture.jpg',
      name: "James",
      subText: "Interior Designer",
      banner: 'images/9.jpg',
    ),
    ProductCard(
      image: "images/gamer.jpg",
      name: "Z1 Gaming",
      subText: "ONLINE GAMER",
      banner: 'images/11.jpg',
    ),
    ProductCard(
        image: "images/football.jpg",
        name: "Jickson",
        subText: "Foot Baller",
        banner: 'images/10.jpg'),
    ProductCard(
      image: 'images/travel.jpg',
      name: "M Jhone",
      subText: "travelist",
      banner: 'images/6.jpg',
    ),
    ProductCard(
      image: 'images/copy.jpg',
      name: "J Michel",
      subText: "Copy Writer",
      banner: 'images/7.jpg',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          'USERS',
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold, color: Colors.deepPurple),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total ${productList.length}',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500, fontSize: 15),
                  ),
                  InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            height: 400,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            child: const FilterLists(),
                          );
                        },
                      );
                    },
                    child: Text(
                      'Filter',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.all(0),
              scrollDirection: Axis.vertical,
              itemCount: productList.length,
              // ignore: non_constant_identifier_names
              itemBuilder: (Context, index) {
                return Column(
                  children: [
                    ListTile(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: 220,
                              decoration: const BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height: 120,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          productList[index].banner,
                                        ),
                                      ),
                                      color: Colors.transparent,
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(20),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                      leading: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                productList[index].image,
                              )),
                          shape: BoxShape.circle,
                          color: Colors.transparent,
                        ),
                      ),
                      trailing: const Icon(Icons.more_vert),
                      title: Text(
                        productList[index].name,
                        style: GoogleFonts.poppins(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text(
                        productList[index].subText,
                        style: GoogleFonts.poppins(),
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  void tapping() {}
}

class ProductCard {
  String image;
  String name;
  String subText;
  String banner;

  ProductCard({
    required this.image,
    required this.name,
    required this.subText,
    required this.banner,
  });
}
