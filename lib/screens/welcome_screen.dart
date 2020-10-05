import 'package:flutter/material.dart';
import 'package:LiciousAfroDeli/Components/background.dart';
import 'package:LiciousAfroDeli/Components/rounded_button.dart';
import 'package:LiciousAfroDeli/constants.dart';
import 'package:LiciousAfroDeli/screens/login_screen.dart';
import 'package:LiciousAfroDeli/screens/register_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final bool _login = true;
  final bool _register = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: FittedBox(
        fit: BoxFit.fitHeight,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              color: Colors.green,
              height: size.height * 0.25,
            ),
            Text(
              "WELCOME",
              style: TextStyle(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Josefin",
                  fontSize: 30.0,
                  letterSpacing: 2.0),
            ),
            Container(
              color: Colors.green,
              height: size.height * 0.40,
            ),
            RoundedButton(
              text: "LOGIN",
              margin: EdgeInsets.symmetric(vertical: 10),
              color: kPrimaryLightColor,
              textColor: kPrimaryColor,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen(_login);
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "SIGN UP",
              margin: EdgeInsets.symmetric(vertical: 10),
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen(_register);
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
