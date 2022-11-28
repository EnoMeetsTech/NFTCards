import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:register/main/login.dart';
import 'package:register/search/recenttab.dart';
import 'package:register/search/toptab.dart';
import 'package:register/search/trendingtab.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import '../more/myappbar.dart';
import '../more/mytabbar.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  void _searchButtonTapped() {}

  List tabOptions = [
    ['Recent', const RecentTab()],
    ['Trending', const TrendingTab()],
    ['Top', const TopTab()],
  ];

  int _currentBottonIndex = 0;
  void _handleIndexChanged(int? index) {
    setState(() {
      _currentBottonIndex = index!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabOptions.length,
      child: Scaffold(
        backgroundColor: Colors.black,
        extendBody: true,
        body: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: ListView(
            children: [
              MyAppBar(
                title: ('EXPLORE COLLECTIONS'),
                onSearchTap: _searchButtonTapped,
              ),
              SizedBox(
                height: 600,
                child: MyTabBar(
                  tabOptions: tabOptions,
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: Container(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: GNav(
              backgroundColor: Colors.black,
              color: Colors.white,
              activeColor: Colors.white,
              tabBackgroundColor: Colors.orange.shade900,
              gap: 10,
              padding: EdgeInsets.all(16),
              tabs: [
                GButton(icon: Icons.home, text: 'Home'),
                GButton(icon: Icons.favorite, text: 'Favorite'),
                GButton(icon: Icons.person, text: 'Profile'),
                GButton(icon: Icons.settings, text: 'Settings')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
