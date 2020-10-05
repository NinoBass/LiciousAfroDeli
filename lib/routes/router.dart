import 'package:auto_route/auto_route_annotations.dart';
import 'package:LiciousAfroDeli/screens/change_language_screen.dart';
import 'package:LiciousAfroDeli/screens/change_password_screen.dart';
import 'package:LiciousAfroDeli/screens/edit_profile_screen.dart';
import 'package:LiciousAfroDeli/screens/filter_screen.dart';
import 'package:LiciousAfroDeli/screens/forgot_password_screen.dart';
import 'package:LiciousAfroDeli/screens/home_screen.dart';
import 'package:LiciousAfroDeli/screens/login_screen.dart';
import 'package:LiciousAfroDeli/screens/profile_screen.dart';
import 'package:LiciousAfroDeli/screens/register_screen.dart';
import 'package:LiciousAfroDeli/screens/set_location_screen.dart';
import 'package:LiciousAfroDeli/screens/settings_screen.dart';
import 'package:LiciousAfroDeli/screens/splash_screen.dart';
import 'package:LiciousAfroDeli/screens/welcome_screen.dart';
import 'package:flutter/widgets.dart';

@MaterialAutoRouter(
  // generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    MaterialRoute(page: SplashScreen, initial: true),
    MaterialRoute(page: WelcomeScreen),
    MaterialRoute(page: LoginScreen),
    MaterialRoute(page: ForgotPasswordScreen),
    MaterialRoute(page: SetLocationScreen),
    MaterialRoute(page: HomeScreen),
    MaterialRoute(page: ProfileScreen),
    MaterialRoute(page: FilterScreen),
    MaterialRoute(page: SettingsScreen),
    MaterialRoute(page: ChangePasswordScreen),
    MaterialRoute(page: ChangeLanguageScreen),
    MaterialRoute(page: EditProfileScreen),
  ],
)
class $Router {
  SplashScreen splashScreen;
  WelcomeScreen welcomeScreen;

  LoginScreen loginScreen;
  ForgotPasswordScreen forgotPasswordScreen;

  SetLocationScreen setLocationScreen;
  HomeScreen homeScreen;

  ProfileScreen profileScreen;
  FilterScreen filterScreen;

  SettingsScreen settingsScreen;
  ChangePasswordScreen changePasswordScreen;

  ChangeLanguageScreen changeLanguageScreen;
  EditProfileScreen editProfileScreen;
}

class RestaurantDetails {
  final String imagePath;
  final String restaurantName;
  final String restaurantAddress;
  final String category;
  final String distance;
  final String rating;

  RestaurantDetails({
    @required this.imagePath,
    @required this.restaurantName,
    @required this.restaurantAddress,
    @required this.category,
    @required this.distance,
    @required this.rating,
  });
}
