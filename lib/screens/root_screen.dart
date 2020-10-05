import 'dart:ffi';

import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';
// import 'package:potbelly/routes/router.dart';
// import 'package:potbelly/routes/router.gr.dart';
// import 'package:LiciousAfroDeli/screens/new_review_screen.dart';
import 'package:LiciousAfroDeli/values/values.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'dart:math' as math;

import '../constants.dart';
import 'order_screen.dart';
import 'profile_screen.dart';
import 'bookmarks_screen.dart';
import 'home_screen.dart';

class RootScreen extends StatefulWidget {
  RootScreen({this.currentScreen});

  final CurrentScreen currentScreen;

  @override
  _RootScreenState createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen>
    with SingleTickerProviderStateMixin {
  Widget currentScreen;
  int currentTab;

//  final double pi = math.pi;
  final double tilt90Degrees = 90;
  double angle = math.pi;

  @override
  initState() {
    super.initState();
    currentScreen = widget.currentScreen?.currentScreen ?? HomeScreen();
    currentTab = widget.currentScreen?.tab_no ?? 0;
  }

  changeScreen({
    @required Widget currentScreen,
    int currentTab,
  }) {
    setState(() {
      this.currentScreen = currentScreen;
      this.currentTab = currentTab;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var widthOfScreen = MediaQuery.of(context).size.width;

    return Scaffold(
      body: currentScreen,
      bottomNavigationBar: BottomAppBar(
        elevation: 8.0,
        shape: AutomaticNotchedShape(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            ),
          ),
        ),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 16.0),
          height: 40,
          width: widthOfScreen,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              bottomNavigationIcon(
                destination: HomeScreen(),
                currentTab: HomeScreen.TAB_NO,
                activeIcon: LineAwesomeIcons.home,
              ),
              bottomNavigationIcon(
                destination: BookmarksScreen(),
                currentTab: BookmarksScreen.TAB_NO,
                activeIcon: LineAwesomeIcons.bookmark,
              ),
              bottomNavigationIcon(
                destination: OrderScreen(),
                currentTab: OrderScreen.TAB_NO,
                activeIcon: LineAwesomeIcons.shopping_cart,
                size: 25.0,
              ),
              bottomNavigationIcon(
                destination: ProfileScreen(),
                currentTab: ProfileScreen.TAB_NO,
                activeIcon: LineAwesomeIcons.user_circle_1,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget bottomNavigationIcon({
    @required Widget destination,
    @required int currentTab,
    @required IconData activeIcon,
    double size,
  }) {
    return InkWell(
      onTap: () {
        if (angle == tilt90Degrees) {
          setState(() {
            angle = math.pi;
          });
        }
        print(currentTab);
        changeScreen(currentScreen: destination, currentTab: currentTab);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          activeIcon,
          size: size,
          color: (this.currentTab == currentTab) ? kPrimaryColor : null,
        ),
      ),
    );
  }
}

class CurrentScreen {
  final Widget currentScreen;
  final int tab_no;

  CurrentScreen({
    @required this.tab_no,
    @required this.currentScreen,
  });
}
