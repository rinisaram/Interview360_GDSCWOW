import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../../core/colors/colors.dart';
import '../../core/image_string/image_strings.dart';
import '../../utils/utils.dart';

@RoutePage()
class EvalutionResult extends StatefulWidget {
  const EvalutionResult({super.key});

  @override
  State<EvalutionResult> createState() => _EvalutionResultState();
}

class _EvalutionResultState extends State<EvalutionResult> {
  String evaluationText = "";

  @override
  void initState() {
    super.initState();
    loadEvaluations();
  }

  void loadEvaluations() async {
    // Simulate loading and formatting evaluation text
    setState(() {
      evaluationText = formatEvaluationData();
    });
  }

  String formatEvaluationData() {
    return """
1. Why are you interested in becoming a GDSC Lead?
   Answer: Positive - Demonstrates passion for technology and community impact.

2. Can you share an example of a community project you have previously worked on?
   Answer: Positive - Provides a relevant example of a coding project for local businesses.

3. How would you motivate and encourage your peers to actively participate in GDSC activities?
   Answer: Positive - Outlines engaging strategies to motivate peers.

4. What technical skills do you possess that would be beneficial for leading a GDSC?
   Answer: Positive - Indicates experience in computer programming and software engineering.

5. How do you plan to collaborate with industry experts to enhance the learning experience for GDSC members?
   Answer: Positive - Shows intention to involve industry experts for real-world insights.
""";
  }

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
              'Evaluation Results',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Evaluation Results:',
                style: TextStyle(
                  color: SystemColors.headerColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                )),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(10),
              width: double
                  .infinity, // Makes the container take up all horizontal space
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
              child: Text(evaluationText,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
