import 'package:flutter/material.dart';
import 'package:flutter_application_1/chat_dashboard/view_all.dart';
import 'package:google_fonts/google_fonts.dart';

class ListName extends StatefulWidget {
  const ListName({super.key});

  @override
  State<ListName> createState() => _ListNameState();
}

class _ListNameState extends State<ListName> {
  List<ProductCard> productList = [
    ProductCard(
        image: "images/gamer.jpg",
        name: "Z1 Gaming",
        subText: "ONLINE GAMER",
        banner: 'images/11.jpg'),
    ProductCard(
        image: "images/football.jpg",
        name: "Jickson",
        subText: "Foot Baller",
        banner: 'images/10.jpg'),
    ProductCard(
      image: 'images/furniture.jpg',
      name: "James",
      subText: "Interior Designer",
      banner: 'images/9.jpg',
    ),
    ProductCard(
      image: 'images/crypto.jpg',
      name: " William",
      subText: "Crypto Miner",
      banner: 'images/8.jpg',
    ),
    ProductCard(
      image: 'images/men.jpg',
      name: "Adam",
      subText: "Online Webiner",
      banner: 'images/5.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            width: 365,
            height: 450,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                bottomLeft: Radius.circular(0),
                topLeft: Radius.circular(30),
              ),
            ),
            padding: const EdgeInsets.only(bottom: 100),
            child: Row(children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'New Refferals',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ViewAll(),
                                ),
                              );
                            },
                            child: Text(
                              'View All',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
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
                                        height: 230,
                                        decoration: const BoxDecoration(
                                          color: Colors.transparent,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10),
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
                                                color: Colors.white,
                                                borderRadius:
                                                    const BorderRadius.all(
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
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),
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
              ),
            ]),
          ),
        ),
      ],
    );
  }
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
