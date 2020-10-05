// import 'package:flutter/material.dart';
// import 'package:LiciousAfroDeli/Components/or_divider.dart';
// import 'package:LiciousAfroDeli/Components/social_icon.dart';
// import 'package:LiciousAfroDeli/screens/login_screen.dart';
// import 'package:LiciousAfroDeli/values/values.dart';
// import 'package:LiciousAfroDeli/widgets/dark_overlay.dart';
// import 'package:LiciousAfroDeli/Components/rounded_button.dart';
// import 'package:LiciousAfroDeli/Components/already_have_an_account_acheck.dart';
// import 'package:LiciousAfroDeli/Components/rounded_input_field.dart';
// import 'package:LiciousAfroDeli/Components/rounded_password_field.dart';

// class RegisterScreen extends StatefulWidget {
//   @override
//   _RegisterScreenState createState() => _RegisterScreenState();
// }

// class _RegisterScreenState extends State<RegisterScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Body(),
//     );
//   }
// }

// class Body extends StatefulWidget {
//   @override
//   _BodyState createState() => _BodyState();
// }

// class _BodyState extends State<Body> {
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     var heightOfScreen = MediaQuery.of(context).size.height;
//     var widthOfScreen = MediaQuery.of(context).size.width;
//     return GestureDetector(
//       onTap: () {
//         FocusScopeNode currentFocus = FocusScope.of(context);
//         if (!currentFocus.hasPrimaryFocus) {
//           currentFocus.unfocus();
//         }
//       },
//       child: Scaffold(
//         body: Container(
//           width: widthOfScreen,
//           height: heightOfScreen,
//           decoration: Decorations.regularDecoration,
//           child: Stack(
//             children: <Widget>[
//               Positioned(
//                 top: 0.0,
//                 child: Image.asset(
//                   ImagePath.pancakesInAPan,
//                   height: heightOfScreen,
//                   width: widthOfScreen,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               DarkOverLay(),
//               Positioned(
//                 left: 0,
//                 top: 0,
//                 right: 0,
//                 bottom: 36,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     SizedBox(height: size.height * 0.01),
//                     SizedBox(
//                       height: size.height * 0.27,
//                       child: _buildProfileSelector(context),
//                     ),
//                     SizedBox(height: size.height * 0.012),
//                     SizedBox(
//                       height: size.height * 0.40,
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: <Widget>[
//                           RoundedInputField(
//                             hintText: "Name",
//                             icon: Icons.person,
//                             onChanged: (value) {},
//                           ),
//                           RoundedInputField(
//                             hintText: "Email",
//                             icon: Icons.email,
//                             onChanged: (value) {},
//                           ),
//                           RoundedPasswordField(
//                             hintText: "Password",
//                             onChanged: (value) {},
//                           ),
//                           RoundedButton(
//                             text: "REGISTER",
//                             press: () {},
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(height: size.height * 0.028),
//                     AlreadyHaveAnAccountCheck(
//                       login: false,
//                       press: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) {
//                               return LoginScreen();
//                             },
//                           ),
//                         );
//                       },
//                     ),
//                     OrDivider(
//                       text: 'OR',
//                     ),
//                     Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: <Widget>[
//                           SocalIcon(
//                             iconSrc: "assets/icons/facebook.svg",
//                             press: () {},
//                           ),
//                           SocalIcon(
//                             iconSrc: "assets/icons/twitter.svg",
//                             press: () {},
//                           ),
//                           SocalIcon(
//                             iconSrc: "assets/icons/google-plus.svg",
//                             press: () {},
//                           ),
//                         ]),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// Widget _buildProfileSelector(BuildContext context) {
//   Size size = MediaQuery.of(context).size;
//   return Center(
//     child: Container(
//       width: 120,
//       height: 120,
//       margin: EdgeInsets.only(top: 28),
//       decoration: BoxDecoration(
//         color: AppColors.fillColor,
//         border: Border.all(
//           width: 1,
//           color: Color.fromARGB(125, 0, 0, 0),
//         ),
//         boxShadow: [
//           Shadows.secondaryShadow,
//         ],
//         borderRadius: BorderRadius.all(Radius.circular(76)),
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           SizedBox(height: size.height * 0.037),
//           Center(
//             child: Image.asset(
//               ImagePath.personIconMedium,
//               scale: 1,
//               fit: BoxFit.cover,
//             ),
//           ),
//           Align(
//             alignment: Alignment.bottomRight,
//             child: Image.asset(
//               ImagePath.uploadIcon,
//               scale: 1.5,
//               fit: BoxFit.none,
//             ),
//           )
//         ],
//       ),
//     ),
//   );
// }
