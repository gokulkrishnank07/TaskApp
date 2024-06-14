import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Editprofile extends StatelessWidget {
  const Editprofile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: const [
            Icon(Icons.settings),
            SizedBox(
              width: 15,
            ),
          ],
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Text(
              'Edit Priofile',
              style: GoogleFonts.poppins(),
            ),
          ),
          titleTextStyle: const TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 19,
              fontWeight: FontWeight.bold),
        ),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: Column(children: [
              Stack(
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    decoration: const BoxDecoration(
                      color: Colors.amber,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'images/userphoto.jpg',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: Column(children: [
                  Text(
                    'Paxton CT',
                    style: GoogleFonts.pacifico(
                      fontSize: 23,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: const Text(
                      'paxton07@gmail.com',
                      style: TextStyle(fontWeight: FontWeight.w400),
                    ),
                  )
                ]),
              )
            ])));
  }
}
