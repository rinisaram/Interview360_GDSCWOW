import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_web_interview_360_front_end/core/colors/colors.dart';
import 'package:flutter_web_interview_360_front_end/core/image_string/image_strings.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          _buildTextButton('Home'),
          _buildTextButton('Interview Prep'),
          _buildTextButton('Resume Reviewer'),
          _buildTextButton('About Us'),
          _buildTextButton('Contact Us'),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildInfoContainer(),
                _buildTipsSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextButton(String title) {
    return TextButton(
      onPressed: () {},
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

  Widget _buildQuestionSection() {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Question:',
              style: TextStyle(
                color: SystemColors.headerColor,
                fontWeight: FontWeight.w500,
                fontSize: 17,
              )),
          const Text(' Why do you want to work here?',
              style: TextStyle(
                color: SystemColors.headerColor,
                fontWeight: FontWeight.w500,
                fontSize: 17,
              )),
          const SizedBox(height: 20),
          const Text('Your answer:',
              style: TextStyle(
                color: SystemColors.headerColor,
                fontWeight: FontWeight.w500,
                fontSize: 17,
              )),
          const SizedBox(height: 15),
          Container(
            height: 200,
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
            padding: const EdgeInsets.all(8),
            child: TextField(
              maxLines: null,
              minLines: null,
              expands: true,
              textAlignVertical: TextAlignVertical.top,
              textAlign: TextAlign.start,
              decoration: InputDecoration(
                hintText: 'Type your answer here',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: SystemColors.answerBoxClr,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildInfoContainer() {
    return Container(
      width: 500,
      height: 100,
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(5),
      ),
      padding: const EdgeInsets.all(8),
    );
  }

  Widget _buildTipsSection() {
    return const Padding(
      padding: EdgeInsets.all(8),
      child: Text(
        'Tips using the STAR method: Situation, Task, Action, Result',
        style: TextStyle(
          color: SystemColors.headerColor,
          fontWeight: FontWeight.w500,
          fontSize: 17,
        ),
      ),
    );
  }
}
