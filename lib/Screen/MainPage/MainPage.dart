import 'package:flutter/material.dart';
import 'package:ovo_ui/Screen/DealsPage/DealsPage.dart';
import 'package:ovo_ui/Screen/FinancePage/FinancePage.dart';
import 'package:ovo_ui/Screen/Home/HomePage.dart';
import 'package:ovo_ui/Screen/MainPage/Component/MainBtmNavbar.dart';
import 'package:ovo_ui/Screen/MainPage/Component/MainFAB.dart';
import 'package:ovo_ui/Screen/ProfilePage/ProfilePage.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageController _pagecontroller;
  @override
  void initState() {
    _pagecontroller = new PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pagecontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: PageView(
        controller: _pagecontroller,
        children: [
          HomePage(),
          DealsPage(),
          FinancePage(),
          ProfilePage(),
        ],
        physics: NeverScrollableScrollPhysics(),
      ),
      floatingActionButton: MainFAB(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: MainBottomNavBar(
        pageController: _pagecontroller,
      ),
    );
  }
}
