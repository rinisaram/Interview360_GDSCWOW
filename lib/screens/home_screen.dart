import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_interview_360_front_end/core/colors/colors.dart';
import 'package:flutter_web_interview_360_front_end/core/image_string/image_strings.dart';

import 'camera/camera_widget.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                _buildSubmitButton(),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                _buildInfoContainer(),
                const SizedBox(height: 30),
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
      padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          const Text('Question:',
              style: TextStyle(
                color: SystemColors.headerColor,
                fontWeight: FontWeight.w500,
                fontSize: 25,
              )),
          const Text(' Why do you want to work here?',
              style: TextStyle(
                color: SystemColors.headerColor,
                fontWeight: FontWeight.w500,
                fontSize: 30,
              )),
          const SizedBox(height: 35),
          const Text('Your Answer:',
              style: TextStyle(
                color: SystemColors.headerColor,
                fontWeight: FontWeight.w500,
                fontSize: 25,
              )),
          const SizedBox(height: 15),
          Container(
            height: 400,
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

  Widget _buildSubmitButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 10),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          'Submit',
          style: TextStyle(
            color: Colors.white,
            // fontWeight: FontWeight.w500,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: SystemColors.headerColor,
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }

  Widget _buildInfoContainer() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
      child: CameraWidget(),
    );
  }

  Widget _buildTipsSection() {
    return const Padding(
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Tips for answering:',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
          ),
          SizedBox(height: 10),
          Text(
            '• Use the STAR method - Situation, Task, Action, Result.',
            style: TextStyle(
              color: SystemColors.headerColor,
              fontWeight: FontWeight.w500,
              fontSize: 17,
            ),
          ),
          Text(
            '• Use examples from your work.',
            style: TextStyle(
              color: SystemColors.headerColor,
              fontWeight: FontWeight.w500,
              fontSize: 17,
            ),
            textAlign: TextAlign.start,
          ),
          Text(
            '• Focus on your key strengths.',
            style: TextStyle(
              color: SystemColors.headerColor,
              fontWeight: FontWeight.w500,
              fontSize: 17,
            ),
            textAlign: TextAlign.start,
          ),
          Text(
            '• Keep your answer concise and focused.',
            style: TextStyle(
              color: SystemColors.headerColor,
              fontWeight: FontWeight.w500,
              fontSize: 17,
            ),
            textAlign: TextAlign.start,
          ),
        ],
      ),
    );
  }
}
