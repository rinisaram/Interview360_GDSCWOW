
import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_interview_360_front_end/core/colors/colors.dart';

import '../../core/image_string/image_strings.dart';
import '../../routes/routes_imports.gr.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    moveToOnboard();
    super.initState();
  }

  moveToOnboard() async {
    await Future.delayed(const Duration(seconds: 3), () {
      AutoRouter.of(context).push(const HomeScreenRoute());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SystemColors.headerColor,
      body: Center(
        child: FadedScaleAnimation(
          fadeDuration: const Duration(milliseconds: 500),
          child: Image.asset(
            SystemImages.logo,
            height: 100,
            width: 100,
          ),
        ),
      ),
    );
  }
}
