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
            SizedBox(width: 5),
            Text(
              'Interview360°',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
            ),
          ],
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child: Text('Home', style: TextStyle(color: Colors.white))),
          TextButton(
              onPressed: () {},
              child: Text('Interview Prep',
                  style: TextStyle(color: Colors.white))),
          TextButton(
              onPressed: () {},
              child: Text('Resume Reviewer',
                  style: TextStyle(color: Colors.white))),
          TextButton(
              onPressed: () {},
              child: Text('About Us', style: TextStyle(color: Colors.white))),
          TextButton(
              onPressed: () {},
              child: Text('Contact Us', style: TextStyle(color: Colors.white))),
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    child: Text('Question:'),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    child: Text('Sample Interview Question?'),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  padding: EdgeInsets.all(8),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(8),
                  child: Text('Sample Interview Question?'),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(8),
                  child: TextField(
                    decoration: InputDecoration(hintText: 'Your answer here'),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(8.0),
        child:
            Text('Tips using the STAR method: Situation, Task, Action, Result'),
      ),
    );
  }
}
