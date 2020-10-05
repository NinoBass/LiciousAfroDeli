import 'package:LiciousAfroDeli/screens/root_screen.dart';
import 'package:flutter/material.dart';
import 'package:LiciousAfroDeli/Components/or_divider.dart';
import 'package:LiciousAfroDeli/Components/social_icon.dart';
import 'package:LiciousAfroDeli/constants.dart';
import 'package:LiciousAfroDeli/screens/forgot_password_screen.dart';
import 'package:LiciousAfroDeli/values/values.dart';
import 'package:LiciousAfroDeli/widgets/dark_overlay.dart';
import 'package:LiciousAfroDeli/Components/rounded_button.dart';
import 'package:LiciousAfroDeli/Components/already_have_an_account_acheck.dart';
import 'package:LiciousAfroDeli/Components/rounded_input_field.dart';
import 'package:LiciousAfroDeli/Components/rounded_password_field.dart';

class LoginScreen extends StatefulWidget {
  bool changeview;
  LoginScreen(
    this.changeview,
  );
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Widget _buildLogo() {
    return Center(
      child: Container(
        width: 120,
        height: 120,
        margin: EdgeInsets.only(top: 28),
        decoration: BoxDecoration(
          color: kPrimaryLightColor,
          border: Border.all(
            width: 1,
            color: Color.fromARGB(125, 0, 0, 0),
          ),
          boxShadow: [
            Shadows.secondaryShadow,
          ],
          borderRadius: BorderRadius.all(Radius.circular(76)),
        ),
        child: Center(
          child: Image.asset(
            ImagePath.liciousafrodeli,
            scale: 9,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget _buildProfileSelector() {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        width: 120,
        height: 120,
        margin: EdgeInsets.only(top: 15),
        decoration: BoxDecoration(
          color: AppColors.fillColor,
          border: Border.all(
            width: 1,
            color: Color.fromARGB(125, 0, 0, 0),
          ),
          boxShadow: [
            Shadows.secondaryShadow,
          ],
          borderRadius: BorderRadius.all(Radius.circular(76)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.037),
            Center(
              child: Image.asset(
                ImagePath.personIconMedium,
                scale: 1,
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Image.asset(
                ImagePath.uploadIcon,
                scale: 1.5,
                fit: BoxFit.none,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _login() {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        // SizedBox(height: size.height * 0.007),
        _buildLogo(),
        SizedBox(height: size.height * 0.045),
        Container(
          height: size.height * 0.30,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              RoundedInputField(
                hintText: "Email",
                icon: Icons.email,
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {},
              ),
              RoundedPasswordField(
                hintText: 'Password',
                keyboardType: TextInputType.text,
                onChanged: (value) {},
              ),
              RoundedButton(
                text: "LOGIN",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return RootScreen();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        SizedBox(height: size.height * 0.005),
        SizedBox(
          height: size.height * 0.035,
          child: Align(
            alignment: Alignment.center,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ForgotPasswordScreen();
                    },
                  ),
                );
              },
              child: Container(
                child: Text(
                  'Forgot Password?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontFamily: 'Josefin Sans',
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _register() {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        _buildProfileSelector(),
        SizedBox(height: size.height * 0.009),
        Container(
          height: size.height * 0.37,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              RoundedInputField(
                hintText: "Name",
                icon: Icons.person,
                onChanged: (value) {},
              ),
              RoundedInputField(
                hintText: "Email",
                icon: Icons.email,
                onChanged: (value) {},
              ),
              RoundedPasswordField(
                hintText: "Password",
                onChanged: (value) {},
              ),
              RoundedButton(
                text: "REGISTER",
                press: () {},
              ),
            ],
          ),
        ),
        SizedBox(height: size.height * 0.024),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var heightOfScreen = MediaQuery.of(context).size.height;
    var widthOfScreen = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 0.0,
                child: Image.asset(
                  ImagePath.pancakesInAPan,
                  height: heightOfScreen,
                  width: widthOfScreen,
                  fit: BoxFit.cover,
                ),
              ),
              DarkOverLay(),
              Positioned(
                left: 0,
                top: 5,
                right: 0,
                bottom: 36,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    widget.changeview ? _login() : _register(),
                    AlreadyHaveAnAccountCheck(
                      press: () {
                        if (widget.changeview == true)
                          setState(() {
                            widget.changeview = false;
                          });
                        else
                          setState(() {
                            widget.changeview = true;
                          });
                      },
                    ),
                    OrDivider(
                      text: 'OR',
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SocalIcon(
                            iconSrc: "assets/icons/facebook.svg",
                            press: () {},
                          ),
                          SocalIcon(
                            iconSrc: "assets/icons/twitter.svg",
                            press: () {},
                          ),
                          SocalIcon(
                            iconSrc: "assets/icons/google-plus.svg",
                            press: () {},
                          ),
                        ]),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
