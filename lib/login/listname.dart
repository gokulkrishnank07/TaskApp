import 'package:flutter/material.dart';

class ListName extends StatefulWidget {
  const ListName({super.key});

  @override
  State<ListName> createState() => _ListNameState();
}

class _ListNameState extends State<ListName> {
  List fruits = ['apple', 'bananana', 'grape', 'cherry'];

  List<ProductCard> productList = [
    ProductCard(
      image: "image",
      name: "nihal",
      subText: "dev",
    ),
    ProductCard(
      image: "image",
      name: "gokul",
      subText: "nbhjm",
    ),
    ProductCard(
      image: "hgjh",
      name: "name",
      subText: "subText",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Text('New Referrals'),
        Container(
          width: 365,
          height: 400,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                bottomLeft: Radius.circular(20),
                topLeft: Radius.circular(30)),
          ),
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Row(children: [
            // Column(
            // children: [
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(0),
                scrollDirection: Axis.vertical,
                itemCount: productList.length,
                itemBuilder: (Context, index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: const CircleAvatar(
                          backgroundColor: Colors.black,
                        ),
                        trailing: const Icon(Icons.more_vert),
                        title: Text(productList[index].name),
                        subtitle: Text(productList[index].subText),
                      )
                    ],
                  );
                },
              ),
            ),
          ]),
        ),
      ],
    );
  }
}

class ProductCard {
  String image;
  String name;
  String subText;

  ProductCard({
    required this.image,
    required this.name,
    required this.subText,
  });
}
