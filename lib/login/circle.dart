// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CostomCircle extends StatelessWidget {
  const CostomCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 150,
          width: 270,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: const Color.fromARGB(255, 255, 255, 255).withOpacity(.2),
          ),
        ),
      ],
    );
  }
}
