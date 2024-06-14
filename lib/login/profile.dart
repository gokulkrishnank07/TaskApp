import 'package:flutter/material.dart';
import 'package:flutter_application_1/login/editprofile.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

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
          padding: const EdgeInsets.symmetric(horizontal: 74),
          child: Text(
            'Profile',
            style: GoogleFonts.poppins(),
          ),
        ),
        titleTextStyle: const TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 25,
            fontWeight: FontWeight.bold),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 100, right: 100),
            child: Container(
              width: 150,
              height: 150,
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
          ),
          Text(
            'Paxton CT',
            style: GoogleFonts.pacifico(
              fontSize: 23,
            ),
          ),
          const Text(
            'paxton07@gmail.com',
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            child: SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Editprofile(),
                    ),
                  );
                  FocusScope.of(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  shadowColor: Colors.black,
                  foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(39),
                  ),
                ),
                child: const Text('Edit'),
              ),
            ),
          ),
          ListView(
            children: [
              ListTile(
                leading: Icon(Icons.add_to_photos_sharp),
              )
            ],
          )
        ],
      ),
    );
  }
}
