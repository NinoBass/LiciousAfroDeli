// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../screens/change_language_screen.dart';
import '../screens/change_password_screen.dart';
import '../screens/edit_profile_screen.dart';
import '../screens/filter_screen.dart';
import '../screens/forgot_password_screen.dart';
import '../screens/home_screen.dart';
import '../screens/login_screen.dart';
import '../screens/profile_screen.dart';
import '../screens/register_screen.dart';
import '../screens/set_location_screen.dart';
import '../screens/settings_screen.dart';
import '../screens/splash_screen.dart';
import '../screens/welcome_screen.dart';

class Routes {
  static const String splashScreen = '/';
  static const String welcomeScreen = '/welcome-screen';
  static const String loginScreen = '/login-screen';
  static const String forgotPasswordScreen = '/forgot-password-screen';
  static const String registerScreen = '/register-screen';
  static const String setLocationScreen = '/set-location-screen';
  static const String homeScreen = '/home-screen';
  static const String profileScreen = '/profile-screen';
  static const String filterScreen = '/filter-screen';
  static const String settingsScreen = '/settings-screen';
  static const String changePasswordScreen = '/change-password-screen';
  static const String changeLanguageScreen = '/change-language-screen';
  static const String editProfileScreen = '/edit-profile-screen';
  static final navigator = Navigator();
  static const all = <String>{
    splashScreen,
    welcomeScreen,
    loginScreen,
    forgotPasswordScreen,
    registerScreen,
    setLocationScreen,
    homeScreen,
    profileScreen,
    filterScreen,
    settingsScreen,
    changePasswordScreen,
    changeLanguageScreen,
    editProfileScreen,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashScreen, page: SplashScreen),
    RouteDef(Routes.welcomeScreen, page: WelcomeScreen),
    RouteDef(Routes.loginScreen, page: LoginScreen),
    RouteDef(Routes.forgotPasswordScreen, page: ForgotPasswordScreen),
    RouteDef(Routes.setLocationScreen, page: SetLocationScreen),
    RouteDef(Routes.homeScreen, page: HomeScreen),
    RouteDef(Routes.profileScreen, page: ProfileScreen),
    RouteDef(Routes.filterScreen, page: FilterScreen),
    RouteDef(Routes.settingsScreen, page: SettingsScreen),
    RouteDef(Routes.changePasswordScreen, page: ChangePasswordScreen),
    RouteDef(Routes.changeLanguageScreen, page: ChangeLanguageScreen),
    RouteDef(Routes.editProfileScreen, page: EditProfileScreen),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SplashScreen(),
        settings: data,
      );
    },
    WelcomeScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => WelcomeScreen(),
        settings: data,
      );
    },
    // LoginScreen: (data) {
    //   return MaterialPageRoute<dynamic>(
    //     builder: (context) => LoginScreen(),
    //     settings: data,
    //   );
    // },
    ForgotPasswordScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ForgotPasswordScreen(),
        settings: data,
      );
    },
    // RegisterScreen: (data) {
    //   return MaterialPageRoute<dynamic>(
    //     builder: (context) => RegisterScreen(),
    //     settings: data,
    //   );
    // },
    SetLocationScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SetLocationScreen(),
        settings: data,
      );
    },
    HomeScreen: (data) {
      final args = data.getArgs<HomeScreenArguments>(
        orElse: () => HomeScreenArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomeScreen(),
        settings: data,
      );
    },
    ProfileScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ProfileScreen(),
        settings: data,
      );
    },
    FilterScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => FilterScreen(),
        settings: data,
      );
    },
    SettingsScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SettingsScreen(),
        settings: data,
      );
    },
    ChangePasswordScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ChangePasswordScreen(),
        settings: data,
      );
    },
    ChangeLanguageScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ChangeLanguageScreen(),
        settings: data,
      );
    },
    EditProfileScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => EditProfileScreen(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushSplashScreen() => push<dynamic>(Routes.splashScreen);

  Future<dynamic> pushWelcomeScreen() => push<dynamic>(Routes.welcomeScreen);

  Future<dynamic> pushLoginScreen() => push<dynamic>(Routes.loginScreen);

  Future<dynamic> pushForgotPasswordScreen() =>
      push<dynamic>(Routes.forgotPasswordScreen);

  Future<dynamic> pushRegisterScreen() => push<dynamic>(Routes.registerScreen);

  Future<dynamic> pushSetLocationScreen() =>
      push<dynamic>(Routes.setLocationScreen);

  Future<dynamic> pushHomeScreen(
    bool Function(Route route) param0, {
    Key key,
  }) =>
      push<dynamic>(
        Routes.homeScreen,
        arguments: HomeScreenArguments(key: key),
      );

  Future<dynamic> pushProfileScreen() => push<dynamic>(Routes.profileScreen);

  Future<dynamic> pushFilterScreen() => push<dynamic>(Routes.filterScreen);

  Future<dynamic> pushSettingsScreen() => push<dynamic>(Routes.settingsScreen);

  Future<dynamic> pushChangePasswordScreen() =>
      push<dynamic>(Routes.changePasswordScreen);

  Future<dynamic> pushChangeLanguageScreen() =>
      push<dynamic>(Routes.changeLanguageScreen);

  Future<dynamic> pushEditProfileScreen() =>
      push<dynamic>(Routes.editProfileScreen);
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// HomeScreen arguments holder class
class HomeScreenArguments {
  final Key key;
  HomeScreenArguments({this.key});
}
