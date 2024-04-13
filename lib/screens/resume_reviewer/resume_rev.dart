import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../core/colors/colors.dart';
import '../../core/image_string/image_strings.dart';
import '../../routes/routes_imports.gr.dart';

@RoutePage()
class ResumeScreen extends StatelessWidget {
  const ResumeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerEnableOpenDragGesture: false,
      backgroundColor: SystemColors.backgrounClr,
      appBar: AppBar(
        backgroundColor: SystemColors.headerColor,
        title: Row(
          children: [
            Image.asset(SystemImages.logo, height: 30, width: 30),
            const SizedBox(width: 5),
            const Text(
              'Interview360°',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
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
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildQuestionSection(),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 200),
                _buildInfoContainer(),
                const SizedBox(height: 30),
                // _buildTipsSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoContainer() {
    return const Column(
      children: [
        Text(
          'Your Score is:',
          style: TextStyle(
              color: SystemColors.headerColor,
              fontSize: 18,
              fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20),
        Text(
          '80%',
          style: TextStyle(
              color: SystemColors.headerColor,
              fontSize: 150,
              fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _buildQuestionSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 30),
          const Text('Resume Reviewer',
              style: TextStyle(
                color: SystemColors.headerColor,
                fontWeight: FontWeight.w500,
                fontSize: 30,
              )),
          const SizedBox(height: 20),
          const Text(
              'Optimize your resume with our AI-powered analysis tool,providing insights and suggestions to help you stand out to potential employers.',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 15,
              )),
          const SizedBox(height: 30),
          Container(
            height: 50,
            width: 350,
            decoration: BoxDecoration(
              color: SystemColors.answerBoxClr,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                const Text(
                  'Upload Resume in PDF Format: ',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      color: SystemColors.headerColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      'Choose File',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
              color: SystemColors.answerBoxClr,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            padding: const EdgeInsets.all(10),
            child: const Row(
              children: [
                Text('Tips to refineyout resume:',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    )),
              ],
            ),
          ),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}

Widget _buildTextButton(String title, VoidCallback onPressed) {
  return TextButton(
    onPressed: onPressed,
    child: Text(
      title,
      style: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w100,
        fontSize: 16,
      ),
    ),
  );
}
