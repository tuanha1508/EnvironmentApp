// ignore_for_file: no_leading_underscores_for_local_identifiers, avoid_print, unused_import

import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:first/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sidebarx/sidebarx.dart';

class Homescreenb extends StatefulWidget {
  const Homescreenb({super.key});
  @override
  Homescreen createState() => Homescreen();
}

const canvasColor = Color(0xFF2E2E48);

class Homescreen extends State<Homescreenb> {
  // Homescreen({super.key});

  final _controller = SidebarXController(selectedIndex: 0, extended: true);
  int currentIndex = 0;
  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    enterFullScreen();
    final _key = GlobalKey<ScaffoldState>();
    double rong = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _key,
      backgroundColor: const Color.fromRGBO(1, 1, 1, 1),
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 30, left: (rong - 45)),
                  child: const Icon(
                    Icons.account_circle_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30, left: (rong - 90)),
                  child: const Icon(
                    Icons.notifications_none_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    _key.currentState?.openDrawer();
                  },
                  padding: const EdgeInsets.only(top: 30, left: 30),
                  icon: const Icon(
                    CupertinoIcons.equal,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(left: 30, top: 15),
                  child: Column(
                    children: [
                      Text(
                        'Good Morning,',
                        style: GoogleFonts.nunitoSans(
                          fontWeight: FontWeight.w800,
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'User_Name',
                        style: GoogleFonts.nunitoSans(
                          fontWeight: FontWeight.w800,
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 40, top: 30),
                  child: Text(
                    'Feature Categories',
                    style: GoogleFonts.notoSans(
                      fontWeight: FontWeight.w700,
                      fontSize: 19,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 60, left: 30, right: 30),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ButtonCard(
                        '/screen.report',
                        Icons.add_location_alt_outlined,
                      ),
                      Spacer(),
                      ButtonCard('/screen.map', Icons.map_outlined),
                      Spacer(),
                      ButtonCard(
                          '/screen.history', Icons.manage_history_outlined),
                    ],
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 40, top: 10),
                  child: Text(
                    'Most Reported',
                    style: GoogleFonts.notoSans(
                      fontWeight: FontWeight.w700,
                      fontSize: 19,
                      color: Colors.white,
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    margin: const EdgeInsets.only(left: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Card(1),
                        const Card(2),
                        const Card(3),
                        const Card(4),
                        const Card(5),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(
                              context,
                              '/screen.mostreported',
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromRGBO(1, 1, 1, 1),
                          ),
                          child: Container(
                            margin: const EdgeInsets.only(top: 45),
                            height: 55,
                            width: 55,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                              color: Colors.white70,
                            ),
                            child: const Icon(
                              Icons.arrow_circle_right_outlined,
                              color: Colors.black,
                              size: 40,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: CircleNavBar(
        activeIcons: const [
          Icon(Icons.home, color: Colors.white),
          Icon(Icons.add_circle_outline, color: Colors.white),
          Icon(Icons.history, color: Colors.white),
          Icon(Icons.support_agent, color: Colors.white)
        ],
        inactiveIcons: [
          Text(
            "Home",
            style: GoogleFonts.notoSans(
              fontWeight: FontWeight.w700,
              fontSize: 15,
              color: Colors.white.withOpacity(0.5),
            ),
          ),
          Text(
            "Add",
            style: GoogleFonts.notoSans(
              fontWeight: FontWeight.w700,
              fontSize: 15,
              color: Colors.white.withOpacity(0.5),
            ),
          ),
          Text(
            "History",
            style: GoogleFonts.notoSans(
              fontWeight: FontWeight.w700,
              fontSize: 15,
              color: Colors.white.withOpacity(0.5),
            ),
          ),
          Text(
            "Contact Support",
            style: GoogleFonts.notoSans(
              fontWeight: FontWeight.w700,
              fontSize: 15,
              color: Colors.white.withOpacity(0.5),
            ),
          ),
        ],
        color: const Color.fromRGBO(23, 23, 23, 1),
        height: 60,
        circleWidth: 60,
        padding: const EdgeInsets.only(left: 5, right: 5, bottom: 0),
        cornerRadius: const BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
          bottomRight: Radius.circular(25),
          bottomLeft: Radius.circular(25),
        ),
        shadowColor: const Color.fromRGBO(18, 18, 18, 1),
        circleShadowColor: const Color.fromRGBO(23, 23, 23, 1),
        activeIndex: currentIndex,
        onTap: onTabTapped,
      ),
      drawer: sideBar(controller: _controller),
    );
  }
}

//Build Feature Categories
class ButtonCard extends StatelessWidget {
  const ButtonCard(this.indexScreen, this.indexIcon, {super.key});
  final String indexScreen;
  final IconData indexIcon;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(
          context,
          indexScreen,
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromRGBO(1, 1, 1, 1),
      ),
      child: Container(
        height: 75,
        width: 75,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white70,
        ),
        child: Icon(
          indexIcon,
          size: 45,
          color: Colors.black,
        ),
      ),
    );
  }
}

// Build Most Reported
class Card extends StatelessWidget {
  const Card(this.dataRank, {super.key});
  final int dataRank;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 40, top: 40),
          height: 125,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromRGBO(28, 28, 28, 1),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 33 + 165, top: 48),
          child: Text(
            '#$dataRank',
            style: GoogleFonts.notoSans(
              fontWeight: FontWeight.w700,
              fontSize: 19,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 55, top: 65),
          child: Text(
            'District',
            style: GoogleFonts.notoSans(
              fontWeight: FontWeight.w700,
              fontSize: 25,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          margin: const EdgeInsets.only(left: 56, top: 105),
          child: Text(
            'Detail adress',
            style: GoogleFonts.notoSans(
              fontWeight: FontWeight.w700,
              fontSize: 15,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}

// ignore: camel_case_types
class sideBar extends StatelessWidget {
  const sideBar({
    Key? key,
    required SidebarXController controller,
  })  : _controller = controller,
        super(key: key);

  final SidebarXController _controller;
  @override
  Widget build(BuildContext context) {
    return SidebarX(
      controller: _controller,
      theme: SidebarXTheme(
        margin: const EdgeInsets.only(left: 10, top: 15, bottom: 15, right: 10),
        decoration: BoxDecoration(
          color: canvasColor,
          borderRadius: BorderRadius.circular(20),
        ),
        hoverColor: const Color.fromRGBO(1, 1, 1, 1),
        textStyle: TextStyle(color: Colors.white.withOpacity(0.7)),
        selectedTextStyle: const TextStyle(color: Colors.white),
        itemTextPadding: const EdgeInsets.only(left: 30),
        selectedItemTextPadding: const EdgeInsets.only(left: 30),
        itemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: canvasColor),
        ),
        selectedItemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: const Color(0xFF5F5FA7).withOpacity(0.6).withOpacity(0.37),
          ),
          gradient: const LinearGradient(
            colors: [Color(0xFF3E3E61), canvasColor],
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.28),
              blurRadius: 30,
            )
          ],
        ),
        iconTheme: IconThemeData(
          color: Colors.white.withOpacity(0.7),
          size: 20,
        ),
        selectedIconTheme: const IconThemeData(
          color: Colors.white,
          size: 20,
        ),
      ),
      extendedTheme: const SidebarXTheme(
        width: 200,
        decoration: BoxDecoration(color: canvasColor),
      ),
      extendIcon: Icons.arrow_forward_ios_rounded,
      collapseIcon: Icons.arrow_back_ios_new_rounded,
      footerItems: const [
        SidebarXItem(
          icon: Icons.account_circle_outlined,
          label: 'User Name',
        ),
        SidebarXItem(icon: Icons.logout_rounded, label: 'Log out')
      ],
      items: [
        SidebarXItem(
          icon: Icons.home,
          label: 'Home',
          onTap: () {},
        ),
        const SidebarXItem(
          icon: Icons.search,
          label: 'Search',
        ),
        const SidebarXItem(
          icon: Icons.help_outline_outlined,
          label: 'Help',
        ),
      ],
    );
  }
}
