import 'package:flutter/material.dart';

// ignore: camel_case_types
class BoxText extends StatelessWidget {
  const BoxText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          height: 130,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Padding(
            //padding: EdgeInsets.symmetric(horizontal: 30, vertical: 100)),
            Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black,
                      offset: Offset(2, 5),
                      spreadRadius: 0,
                      blurRadius: 3),
                ],
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: const Column(
                children: [
                  Text(
                    '07',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 50, color: Colors.deepPurpleAccent),
                  ),
                  Text(
                    'All Referrals',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),

            Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black,
                      offset: Offset(2, 5),
                      spreadRadius: 0,
                      blurRadius: 3),
                ],
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: const Column(
                children: [
                  Text(
                    '72',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.deepPurpleAccent,
                    ),
                  ),
                  Text(
                    'Today Refferals',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 40),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(.2),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: const Offset(3, 3), // changes position of shadow
                ),
              ],
            ),
            child: const Padding(
              padding: EdgeInsets.all(0.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Align(
                    widthFactor: 1.0,
                    heightFactor: 1.0,
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                    ),
                  ),
                  labelText: 'See Contact Detials',
                  labelStyle: TextStyle(fontWeight: FontWeight.bold),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
