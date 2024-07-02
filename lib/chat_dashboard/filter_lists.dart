import 'package:flutter/material.dart';
import 'package:flutter_application_1/chat_dashboard/checkbox_widget.dart';
import 'package:flutter_application_1/chat_dashboard/radio_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class FilterLists extends StatefulWidget {
  const FilterLists({super.key});

  @override
  State<FilterLists> createState() => _FilterListsState();
}

class _FilterListsState extends State<FilterLists> {
  bool clicked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
      child: Column(
        children: [
          SizedBox(
            width: 400,
            child: Text(
              'Filter',
              style: GoogleFonts.poppins(
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                  color: Colors.deepPurple),
            ),
          ),
          const Divider(),
          SizedBox(
            height: 250,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            clicked = true;
                          });
                        },
                        child: Container(
                          height: 50,
                          width: 90,
                          decoration: const BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 25, top: 15),
                            child: Text(
                              'DATE',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            clicked = false;
                          });
                        },
                        child: Container(
                          height: 50,
                          width: 90,
                          decoration: const BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 17, top: 15),
                            child: Text(
                              'GENDER',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const VerticalDivider(
                  width: 50,
                  thickness: 1,
                  color: Colors.grey,
                ),
                clicked ? const CheckboxWidget() : const RadioWidget(),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 50,
                width: 100,
                decoration: const BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 15, left: 5),
                  child: Text(
                    ' Filter Apply',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600, color: Colors.white),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 100,
                decoration: const BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 15, left: 30),
                  child: Text(
                    'Clear',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
