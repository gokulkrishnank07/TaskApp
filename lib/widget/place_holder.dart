import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget placeHolder(String text) {
  return Container(
    padding: const EdgeInsets.all(16.0),
    width: double.infinity,
    decoration: BoxDecoration(
      boxShadow: const [
        BoxShadow(
          color: Colors.grey,
          offset: Offset(1, 1),
          blurRadius: 1.0,
        ),
      ],
      color: Colors.grey[100],
      borderRadius: BorderRadius.circular(8.0),
    ),
    child: Text(
      text,
      style: GoogleFonts.poppins(
          color: const Color(0xFF858585), fontSize: 10, fontWeight: FontWeight.w400),
    ),
  );
}
