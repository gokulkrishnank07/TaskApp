import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckboxWidget extends StatefulWidget {
  const CheckboxWidget({super.key});

  @override
  State<CheckboxWidget> createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  bool first = false;
  bool second = false;
  bool third = false;
  bool fourth = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 144,
      height: 300,
      color: Colors.white,
      child: Column(
        children: [
          CheckboxListTile(
            title: Row(
              children: [
                Text(
                  'hello!',
                  style: GoogleFonts.poppins(),
                ),
              ],
            ),
            value: first,
            onChanged: (bool? value) {
              setState(
                () {
                  first = value!;
                },
              );
            },
          ),
          CheckboxListTile(
            title: Row(
              children: [
                Text(
                  'hi!',
                  style: GoogleFonts.poppins(),
                ),
              ],
            ),
            value: second,
            onChanged: (bool? value) {
              setState(
                () {
                  second = value!;
                },
              );
            },
          ),
          CheckboxListTile(
            title: Row(
              children: [
                Text(
                  'hello!',
                  style: GoogleFonts.poppins(),
                ),
              ],
            ),
            value: third,
            onChanged: (bool? value) {
              setState(
                () {
                  third = value!;
                },
              );
            },
          ),
          CheckboxListTile(
            title: Row(
              children: [
                Text(
                  'hello!',
                  style: GoogleFonts.poppins(),
                ),
              ],
            ),
            value: fourth,
            onChanged: (bool? value) {
              setState(
                () {
                  fourth = value!;
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
