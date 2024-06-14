import 'package:flutter/material.dart';
import 'package:flutter_application_1/dashboard.dart';
import 'package:flutter_application_1/login/profile.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int myIndex = 0;
  List<Widget> widgetList = [
    Login(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: widgetList,
        index: myIndex,
      ),
      bottomNavigationBar:
          // BottomAppBar(
          //   shape: const CircularNotchedRectangle(),
          //   notchMargin: 5.0,
          //   clipBehavior: Clip.antiAlias,
          //   child: SizedBox(
          //     height: kBottomNavigationBarHeight,
          //     child: Row(
          //       mainAxisSize: MainAxisSize.max,
          //       mainAxisAlignment: MainAxisAlignment.spaceAround,
          //       children: <Widget>[
          //         IconButton(
          //           icon: const Icon(Icons.home),
          //           onPressed: () {
          //             Navigator.push(
          //               context,
          //               MaterialPageRoute(
          //                 builder: (context) => Profile(),
          //               ),
          //             );
          //             setState(() {});
          //           },
          //         ),
          //         IconButton(
          //           icon: const Icon(Icons.search),
          //           onPressed: () {
          //             setState(() {});
          //           },
          //         ),
          //         IconButton(
          //           icon: const Icon(Icons.favorite_border_outlined),
          //           onPressed: () {
          //             setState(() {});
          //           },
          //         ),
          //         IconButton(
          //           icon: const Icon(Icons.account_circle_outlined),
          //           onPressed: () {
          //             setState(() {});
          //           },
          //         )
          //       ],
          //     ),
          //   ),
          // ),
          BottomNavigationBar(
        //showSelectedLabels: false,
        showSelectedLabels: false,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        currentIndex: myIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Color.fromARGB(255, 255, 255, 255)),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              backgroundColor: Color.fromARGB(255, 255, 0, 0)),
        ],
      ),
    );
  }
}
