import 'package:LiciousAfroDeli/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LiciousAfroDeli',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      builder: ExtendedNavigator.builder(
        router: Router(),
        initialRoute: Routes.splashScreen,
        navigatorKey: Routes.navigator.key,
        // observers: ,
        // onUnknownRoute: ,
      ),
    );
  }
}
