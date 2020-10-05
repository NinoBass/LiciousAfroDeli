import 'package:LiciousAfroDeli/Components/or_divider.dart';
import 'package:LiciousAfroDeli/Components/rounded_button.dart';
import 'package:LiciousAfroDeli/Components/rounded_input_field.dart';
import 'package:LiciousAfroDeli/constants.dart';
import 'package:LiciousAfroDeli/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:LiciousAfroDeli/values/values.dart';
import 'package:LiciousAfroDeli/widgets/dark_overlay.dart';

class ForgotPasswordScreen extends StatelessWidget {
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
        body: Container(
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
          ),
          child: Stack(
            children: [
              Positioned(
                top: 0.0,
                child: Image.asset(
                  ImagePath.boiledEggs,
                  fit: BoxFit.cover,
                  height: heightOfScreen,
                  width: widthOfScreen,
                ),
              ),
              DarkOverLay(),
              Positioned(
                child: Container(
                  height: heightOfScreen,
                  margin: EdgeInsets.symmetric(horizontal: 24.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: size.height * 0.07,
                        ),
                        _buildAppBar(context),
                        SizedBox(
                          height: size.height * 0.1,
                          child: Container(
                            margin: EdgeInsets.only(top: 30),
                            child: Text(
                              "Enter your Email Address and We will send you an email with instructions on how to reset your password.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white, fontSize: 14.0),
                            ),
                          ),
                        ),
                        SizedBox(height: size.height * 0.01),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: RoundedInputField(
                            icon: Icons.email,
                            keyboardType: TextInputType.emailAddress,
                            hintText: 'Email',
                          ),
                        ),
                        SizedBox(height: size.height * 0.43),
                        Container(
                          margin: const EdgeInsets.symmetric(
                            horizontal: 16.0,
                          ),
                          child: RoundedButton(
                              text: StringConst.SEND,
                              press: () {
                                Navigator.pushReplacementNamed(
                                    context, Routes.loginScreen);
                              }),
                        ),
                        SizedBox(height: size.height * 0.015),
                        OrDivider(
                          text: 'Having Problems?',
                        ),
                        SizedBox(height: size.height * 0.02),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            'Contact Us',
                            style: TextStyle(
                              color: kPrimaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        InkWell(
          onTap: () => Navigator.pop(context),
          child: Padding(
            padding: const EdgeInsets.only(
              // left: Sizes.MARGIN_12,
              right: 12.0,
              top: 4.0,
              bottom: 4.0,
            ),
            child: Image.asset(
              ImagePath.arrowBackIcon,
              color: kPrimaryLightColor,
              scale: 4.5,
              fit: BoxFit.none,
            ),
          ),
        ),
        Spacer(),
        Text(
          'Forgot Password',
          style: Styles.customMediumTextStyle(),
        ),
        Spacer(),
      ],
    );
  }
}
