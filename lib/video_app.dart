import 'package:flutter/material.dart';
import 'package:video_call_app/app_routes.dart';
import 'package:video_call_app/presentations/constants/app_route_string.dart';

import 'package:video_call_app/presentations/constants/app_strings.dart';
import 'package:video_call_app/presentations/constants/app_theme.dart';

class VideoCallApp extends StatelessWidget {
  const VideoCallApp({super.key});

  @override
  Widget build(BuildContext context) {
    var appTheme = AppTheme();
    return MaterialApp(
      initialRoute: RouteString.splashPage,
      onGenerateRoute: AppRoute.onGenarateRoute,
      theme: appTheme.lightTheme,
      title: AppString.appName,
      debugShowCheckedModeBanner: false,
    );
  }
}
