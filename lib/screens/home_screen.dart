import 'package:LiciousAfroDeli/constants.dart';
import 'package:flutter/material.dart';
// import 'package:LiciousAfroDeli/Components/bottom_nav_bar.dart';
import 'package:LiciousAfroDeli/home/components/app_bar.dart';
import 'package:LiciousAfroDeli/home/components/body.dart';

import 'discounts.dart';

class HomeScreen extends StatefulWidget {
  static const int TAB_NO = 0;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool changeHomeView;

  @override
  void initState() {
    super.initState();
    changeHomeView = true;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        // backgroundColor: kPrimaryColor.withOpacity(0.01),
        appBar: homeAppBar(context),
        body: changeHomeView ? Body() : Discount(),
        // bottomNavigationBar: BottomNavBar(),
      ),
    );
  }
}
