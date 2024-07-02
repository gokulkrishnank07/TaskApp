import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RadioWidget extends StatelessWidget {
  const RadioWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 160,
      color: Colors.white,
      child: const RadioList(),
    );
  }
}

enum Gender {
  high,
  low,
  medium,
}

class RadioList extends StatefulWidget {
  const RadioList({super.key});

  @override
  State<RadioList> createState() => _RadioListState();
}

class _RadioListState extends State<RadioList> {
  Gender? _genderItem = Gender.high;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RadioListTile(
          value: Gender.high,
          groupValue: _genderItem,
          onChanged: (Gender? value) {
            setState(() {
              _genderItem = value;
            });
          },
          title: Text(
            'Male',
            style: GoogleFonts.poppins(),
          ),
          subtitle: const Text('...'),
        ),
        RadioListTile(
          value: Gender.low,
          groupValue: _genderItem,
          onChanged: (Gender? value) {
            setState(() {
              _genderItem = value;
            });
          },
          title: Text(
            'Female',
            style: GoogleFonts.poppins(),
          ),
          subtitle: const Text('...'),
        ),
        RadioListTile(
          value: Gender.medium,
          groupValue: _genderItem,
          onChanged: (Gender? value) {
            setState(() {
              _genderItem = value;
            });
          },
          title: Text(
            'Adults',
            style: GoogleFonts.poppins(),
          ),
          subtitle: const Text('...'),
        ),
      ],
    );
  }
}
