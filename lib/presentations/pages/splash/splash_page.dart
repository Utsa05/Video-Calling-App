import 'package:flutter/material.dart';
import 'package:video_call_app/presentations/constants/app_color.dart';

import 'components/content.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  // @override
  // void initState() {
  //   SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
  //       overlays: [SystemUiOverlay.bottom]);
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
  //       overlays: [SystemUiOverlay.top, SystemUiOverlay.bottom]);
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: Container(
        width: size.width,
        height: size.height,
        decoration: bgDecoration(),
        child: const SplashContent(),
      ),
    );
  }

  BoxDecoration bgDecoration() {
    return const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [
          0.3,
          0.3,
          0.3,
          0.3,
          0.9,
        ],
            colors: [
          AppColor.lightBlueColor,
          AppColor.navBlueColor,
          AppColor.lightBlueColor,
          AppColor.lightBlueColor,
          AppColor.navBlueColor,
        ]));
  }
}
