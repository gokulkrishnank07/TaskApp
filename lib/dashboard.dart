// ignore_for_file: dead_code, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_application_1/login/boxtext.dart';
import 'package:flutter_application_1/login/circle.dart';
import 'package:flutter_application_1/login/listname.dart';

import 'package:google_fonts/google_fonts.dart';

class Login extends StatelessWidget {
  const Login({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar:
          // app bar
          AppBar(
        backgroundColor: const Color.fromARGB(0, 0, 0, 0),
        actions: const [
          //icon
          Icon(
            Icons.notifications_on_sharp,
            color: Colors.white,
          ),
          SizedBox(
            width: 40,
          )
        ],
        title: Text(
          'Dashboard',
          style: GoogleFonts.poppins(),
        ),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 25,
        ),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: const [
                    Color(0xFF9245e1),
                    Color(0xFF9245e1),
                    Color(0xFF6235c4),
                  ],
                ),
              ),
              child: Positioned(bottom: 400, top: 20, child: BoxText()),
            ),
            Positioned(right: -100, top: -30, child: CostomCircle()),
            Positioned(top: 400, child: ListName())
          ],
        ),
      ),
    );
  }
}
