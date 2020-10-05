import 'package:LiciousAfroDeli/values/values.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class BookmarksScreen extends StatefulWidget {
  static const int TAB_NO = 1;

  @override
  _BookmarksScreenState createState() => _BookmarksScreenState();
}

class _BookmarksScreenState extends State<BookmarksScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   elevation: 0,
      //   // leading: Image.asset(
      //   //   ImagePath.searchIconBlue,
      //   //   color: ksecondaryColor,
      //   // ),
      //   centerTitle: true,
      //   title: RichText(
      //     textAlign: TextAlign.center,
      //     text: TextSpan(
      //       style: Theme.of(context)
      //           .textTheme
      //           .headline6
      //           .copyWith(fontWeight: FontWeight.bold),
      //       children: [
      //         TextSpan(
      //           text: "My Favourites",
      //           style: TextStyle(color: kPrimaryColor),
      //         ),
      //       ],
      //     ),
      //   ),
      //   actions: <Widget>[
      //     Container(
      //       child: InkWell(
      //         onTap: () {},
      //         child: Image.asset(
      //           ImagePath.searchIconBlue,
      //           color: ksecondaryColor,
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
      body: Container(
          margin: const EdgeInsets.only(
            left: 10.0,
            right: 10.0,
            top: 10.0,
          ),
          color: Colors.green),
    );
  }
}
