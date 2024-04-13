import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/colors/colors.dart';
import '../../core/image_string/image_strings.dart';
import '../../domain/interview_services.dart';
import '../../infrastructure/repository.dart';
import '../../routes/routes_imports.gr.dart';

@RoutePage()
class InterviewScreen extends StatefulWidget {
  const InterviewScreen({super.key});

  @override
  State<InterviewScreen> createState() => _InterviewScreenState();
}

class _InterviewScreenState extends State<InterviewScreen> {
  late InterviewQsntsViewModel interviewQsntsViewModel;
  @override
  void initState() {
    interviewQsntsViewModel =
        InterviewQsntsViewModel(repository: context.read<Repository>());
    super.initState();
  }

  int? _selectedQuestion;
  String? _selectJobprofile;

  // List of dropdown items
  List<int> questions = [5, 10, 15, 20, 25];

  // List of jobprofile
  List<String> jobprofile = [
    'React Developer',
    'Flutter Developer',
    'GDSC Lead',
    'Machine Learning Enginereer'
  ];

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
      body: Form(
        key: interviewQsntsViewModel.formKey,
        child: Row(
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
                  const SizedBox(height: 200),
                  _buildInfoContainer(),
                  const SizedBox(height: 30),
                  // _buildTipsSection(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoContainer() {
    return const Column(
      children: [
        Text(
          'Prepare confidently for technical interviews with out AI-driven mock interview platform, featuring live camera assessment and detailed perfomance evaluation',
          style: TextStyle(
              color: SystemColors.headerColor,
              fontSize: 18,
              fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20),
        Text(
          'Fill up a few details to get started!',
          style: TextStyle(
              color: SystemColors.headerColor,
              fontSize: 18,
              fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _buildSubmitButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 10),
      child: ElevatedButton(
        child: Text(
          'Get Started',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: SystemColors.headerColor,
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: () {
          interviewQsntsViewModel.interview(context);
        },
      ),
    );
  }

  Widget _buildQuestionSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 30),
          const Text('Interview Prep',
              style: TextStyle(
                color: SystemColors.headerColor,
                fontWeight: FontWeight.w500,
                fontSize: 30,
              )),
          const SizedBox(height: 40),
          const Text('Full Name:',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 20,
              )),
          // const SizedBox(height: 5),
          // Container(
          //   height: 50,
          //   width: 400,
          //   decoration: BoxDecoration(
          //     color: SystemColors.answerBoxClr,
          //     borderRadius: BorderRadius.circular(20),
          //     boxShadow: [
          //       BoxShadow(
          //         color: Colors.grey.withOpacity(0.5),
          //         spreadRadius: 1,
          //         blurRadius: 5,
          //         offset: const Offset(0, 3),
          //       ),
          //     ],
          //   ),
          //   padding: const EdgeInsets.all(8),
          //   child: TextField(
          //     decoration: InputDecoration(
          //       hintText: 'Enter your name',
          //       border: OutlineInputBorder(
          //         borderRadius: BorderRadius.circular(20),
          //         borderSide: BorderSide.none,
          //       ),
          //       filled: true,
          //       fillColor: SystemColors.answerBoxClr,
          //     ),
          //   ),
          // ),
          const SizedBox(height: 20),
          const Text('No. of Questions:',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 20,
              )),
          const SizedBox(height: 5),
          Container(
            height: 45,
            width: 120,
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
            padding: const EdgeInsets.fromLTRB(16, 8, 2, 8),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<int>(
                value: _selectedQuestion,
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    SystemImages.arrowdown,
                    height: 20,
                    alignment: Alignment.bottomRight,
                  ),
                ),
                elevation: 0,
                style: const TextStyle(color: Colors.black),
                onChanged: (int? newValue) {
                  setState(() {
                    _selectedQuestion = newValue;
                    interviewQsntsViewModel.getNumQust(newValue);
                  });
                },
                items: questions.map<DropdownMenuItem<int>>((int value) {
                  return DropdownMenuItem<int>(
                    value: value,
                    child: Text(value.toString()),
                  );
                }).toList(),
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Text('Select Job Profile:',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 20,
              )),
          const SizedBox(height: 5),
          Container(
            height: 50,
            width: 400,
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
            //! Select job profile dropdown
            padding: const EdgeInsets.fromLTRB(16, 8, 2, 8),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: _selectJobprofile,
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    SystemImages.arrowdown,
                    height: 20,
                    alignment: Alignment.bottomRight,
                  ),
                ),
                elevation: 0,
                style: const TextStyle(color: Colors.black),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectJobprofile = newValue;
                    interviewQsntsViewModel.jobrole(newValue);
                  });
                },
                items: jobprofile.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ),
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
