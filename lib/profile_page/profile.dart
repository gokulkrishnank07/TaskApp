import 'package:flutter/material.dart';
import 'package:flutter_application_1/profile_page/editprofile.dart';
import 'package:flutter_application_1/login/login_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
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
            padding: const EdgeInsets.only(top: 30, left: 100, right: 100),
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
            shrinkWrap: true,
            children: const [
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                trailing: Icon(Icons.arrow_forward_ios_rounded),
              )
            ],
          ),
          ListView(
            shrinkWrap: true,
            children: const [
              ListTile(
                leading: Icon(Icons.blinds_closed_rounded),
                title: Text('Billing Details'),
                trailing: Icon(Icons.arrow_forward_ios_rounded),
              )
            ],
          ),
          ListView(
            shrinkWrap: true,
            children: const [
              ListTile(
                leading: Icon(Icons.portrait_outlined),
                title: Text('Login Management'),
                trailing: Icon(Icons.arrow_forward_ios_rounded),
              )
            ],
          ),
          const Divider(
            color: Colors.black12,
          ),
          ListView(
            shrinkWrap: true,
            children: const [
              ListTile(
                leading: Icon(Icons.info_rounded),
                title: Text('Information'),
                trailing: Icon(Icons.arrow_forward_ios_rounded),
              )
            ],
          ),
          ListView(
            shrinkWrap: true,
            children: [
              InkWell(
                child: const ListTile(
                  leading: Icon(Icons.logout_rounded),
                  title: Text('LogOut'),
                  textColor: Colors.red,
                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                ),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      backgroundColor: Colors.white,
                      title: const Text(
                        'Log Out',
                      ),
                      content: const Text('If You Want To Log Out!!!'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Container(
                            color: Colors.white,
                            padding: const EdgeInsets.all(14),
                            child: InkWell(
                              child: const Text('Yes!'),
                              onTap: () {
                                Navigator.of(context)
                                    .popUntil((route) => route.isFirst);
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        const LoginScreen(),
                                  ),
                                );
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
