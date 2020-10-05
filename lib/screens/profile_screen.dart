import 'package:LiciousAfroDeli/screens/change_language_screen.dart';
import 'package:LiciousAfroDeli/screens/set_location_screen.dart';
import 'package:LiciousAfroDeli/widgets/small_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'profile_list_item.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../constants.dart';

class ProfileScreen extends StatefulWidget {
  static const int TAB_NO = 3;

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, height: 896, width: 414, allowFontScaling: true);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          SizedBox(height: kSpacingUnit.w * 10),
          // header,
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 120.0,
                width: 120.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60.0),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 3.0,
                        offset: Offset(0, 3.0),
                        color: Color(0xFFCCC9C7)),
                  ],
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/avatar.png",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Richmond Blankson",
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "abcdefg@gmail.com",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13.0,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  SmallButton(btnText: "Edit"),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                ProfileListItem(
                  icon: LineAwesomeIcons.location_arrow,
                  text: 'Location',
                  ontap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return SetLocationScreen();
                        },
                      ),
                    );
                  },
                ),
                ProfileListItem(
                  icon: LineAwesomeIcons.user_lock,
                  text: 'Change Password',
                  ontap: () {},
                ),
                ProfileListItem(
                  icon: LineAwesomeIcons.credit_card,
                  text: 'Payment',
                  ontap: () {},
                ),
                ProfileListItem(
                  icon: LineAwesomeIcons.language,
                  text: 'Language',
                  ontap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return ChangeLanguageScreen();
                        },
                      ),
                    );
                  },
                ),
                ProfileListItem(
                  icon: LineAwesomeIcons.user_plus,
                  text: 'Invite a Friend',
                  ontap: () {},
                ),
                ProfileListItem(
                  icon: LineAwesomeIcons.alternate_sign_out,
                  text: 'Logout',
                  ontap: () {},
                  hasNavigation: false,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
