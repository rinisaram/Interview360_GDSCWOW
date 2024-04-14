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
    var loadedEvaluations = await Utils.getEvaluation();
    if (loadedEvaluations != null) {
      setState(() {
        evaluationText = loadedEvaluations.join("\n");
      });
    }
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
              child: Column(
                children: [
                  Text(evaluationText,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
