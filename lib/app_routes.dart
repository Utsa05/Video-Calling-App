import 'package:flutter/material.dart';
import 'package:video_call_app/presentations/constants/app_route_string.dart';
import 'package:video_call_app/presentations/pages/error/error_page.dart';
import 'package:video_call_app/presentations/pages/home/home_page.dart';
import 'package:video_call_app/presentations/pages/splash/splash_page.dart';

class AppRoute {
  static Route<dynamic> onGenarateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteString.homePage:
        return MaterialPageRoute(builder: (context) => const SplashPage());
      case RouteString.splashPage:
        return MaterialPageRoute(builder: (context) => const HomePage());
      default:
        return MaterialPageRoute(builder: (context) => const ErrorPage());
    }
  }
}
