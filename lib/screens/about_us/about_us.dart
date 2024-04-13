import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../core/colors/colors.dart';
import '../../core/image_string/image_strings.dart';
import '../../routes/routes_imports.gr.dart';

@RoutePage()
class AboutUsScren extends StatelessWidget {
  const AboutUsScren({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerEnableOpenDragGesture: false,
      backgroundColor: SystemColors.headerColor,
      appBar: AppBar(
        backgroundColor: SystemColors.backgrounClr,
        title: Row(
          children: [
            Image.asset(SystemImages.logo, height: 30, width: 30),
            const SizedBox(width: 5),
            const Text(
              'Interview360°',
              style: TextStyle(
                  color: SystemColors.headerColor, fontWeight: FontWeight.w500),
            ),
          ],
        ),
        actions: [
          _buildTextButton('Home', () {
            AutoRouter.of(context).push(const HomeScreenRoute());
          }),
          _buildTextButton('Interview Prep', () {
            AutoRouter.of(context).push(const InterviewScreenRoute());
          }),
          _buildTextButton('Resume Reviewer', () {
            AutoRouter.of(context).push(const ResumeScreenRoute());
          }),
          _buildTextButton('About Us', () {
            AutoRouter.of(context).push(const AboutUsScrenRoute());
          }),
          _buildTextButton('Contact Us', () {
            AutoRouter.of(context).push(const ContactUsScreenRoute());
          }),
        ],
      ),
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   children: [
      //     _buildQuestionSection(),
      //   ],
      // ),
      body: Center(
        child: _buildQuestionSection(),
      ),
    );
  }

  Widget _buildTextButton(String title, VoidCallback onPressed) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: const TextStyle(
          color: SystemColors.headerColor,
          fontWeight: FontWeight.w100,
          fontSize: 16,
        ),
      ),
    );
  }

  Widget _buildQuestionSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          const Text('About Us',
              style: TextStyle(
                color: SystemColors.backgrounClr,
                fontWeight: FontWeight.w500,
                fontSize: 40,
              )),
          const SizedBox(height: 40),
          Image.asset(SystemImages.logo, height: 200, width: 200),
          const SizedBox(height: 15),
          const Text(
            'At Interview360°, we are passionate about empowering individuals to\nexcel in their technical interviews and achieve their career goals.\nWith our cutting-edge web application harnessing the latest in AI\ntechnology, we provide a comprehensive platform for job seekers to\npractice and improve their technical interview skills. Our mission is to\nhelp you land your dream job by providing you with the tools and\nresources you need to succeed. We are committed to helping you\nachieve your career goals and are here to support you every step of\nthe way. Join us today and take the first step towards a brighter\nfuture!',
            style: TextStyle(
              color: SystemColors.backgrounClr,
              fontWeight: FontWeight.w300,
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
