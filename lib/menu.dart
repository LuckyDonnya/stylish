import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:stylish/pages/favorite.dart';
import 'package:stylish/pages/homePage.dart';
import 'package:stylish/pages/login.dart';
import 'package:stylish/pages/myorders.dart';
import 'package:stylish/pages/profile.dart';
import 'package:stylish/pages/signup.dart';

enum _SelectedTab { home, buy, favorite, profile }

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  _SelectedTab _selectedTab = _SelectedTab.home;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        // height: MediaQuery.of(context).size.height,
        // child: IndexedStack(
        index: _SelectedTab.values.indexOf(_selectedTab),
        children: [
          homepage(),
          myorders(),
          favorite(),
          profile(),
        ],
        // ),
      ),
      extendBody: true,
      bottomNavigationBar: DotNavigationBar(
        margin: EdgeInsets.only(left: 50, right: 50),
        currentIndex: _SelectedTab.values.indexOf(_selectedTab),
        onTap: _handleIndexChanged,
        dotIndicatorColor: Color(0xffEF9F27),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        enableFloatingNavBar: false,
        // paddingR: const EdgeInsets.symmetric(
        //   vertical: 10,
        //   horizontal: 20,
        // ),
        enablePaddingAnimation: false,
        items: [
          DotNavigationBarItem(
            icon: Image.asset(
              _selectedTab == _SelectedTab.home
                  ? "assets/home_outlined.png"
                  : "assets/home_filled.png",
              width: 25,
            ),
          ),
          DotNavigationBarItem(
            icon: Image.asset(
              _selectedTab == _SelectedTab.buy
                  ? "assets/buy_outlined.png"
                  : "assets/buy_filled.png",
              width: 25,
            ),
          ),
          DotNavigationBarItem(
            icon: Image.asset(
              _selectedTab == _SelectedTab.favorite
                  ? "assets/favorite_outlined.png"
                  : "assets/favorite_filled.png",
              width: 25,
            ),
          ),
          DotNavigationBarItem(
            icon: Image.asset(
              _selectedTab == _SelectedTab.profile
                  ? "assets/profile_outlined.png"
                  : "assets/profile_filled.png",
              width: 25,
            ),
          ),
        ],
      ),
    );
  }
}
