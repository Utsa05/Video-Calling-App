import 'package:flutter/material.dart';
import 'package:video_call_app/presentations/constants/app_strings.dart';
import 'package:video_call_app/presentations/widges/text_widget.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          'assets/logo/vcall_logo.png',
          width: 100.0,
          height: 100.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        const TextWidget(
          title: AppString.appName,
          size: 24.0,
          weight: FontWeight.bold,
        )
      ],
    );
  }
}
