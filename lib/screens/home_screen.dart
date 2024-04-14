import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web_interview_360_front_end/core/colors/colors.dart';
import 'package:flutter_web_interview_360_front_end/core/image_string/image_strings.dart';
import '../domain/evaluate_models/evaluate_services.dart';
import '../infrastructure/repository.dart';
import '../routes/routes_imports.gr.dart';
import '../utils/utils.dart';
import 'camera/camera_widget.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late EvaluateQsntsViewModel evaluateViewModel;
  List<String> questions = [];
  int currentQuestionIndex = 0;
  final Map<String, String> questionAnswers = {};
  final TextEditingController answerController = TextEditingController();
  bool allQuestionsAnswered =
      false; // Flag to track if all questions are answered

  @override
  void initState() {
    evaluateViewModel =
        EvaluateQsntsViewModel(repository: context.read<Repository>());
    super.initState();
    loadQuestions();
  }

  @override
  void dispose() {
    answerController.dispose(); // Dispose the controller to avoid memory leaks
    super.dispose();
  }

  void loadQuestions() async {
    var loadedQuestions = await Utils.getQuestions();
    if (loadedQuestions != null) {
      setState(() {
        questions = loadedQuestions;
      });
    }
  }

  void nextQuestion() {
    if (questions.isNotEmpty) {
      String currentQuestion = questions[currentQuestionIndex];
      // Save the current question and answer using the question text as the key
      questionAnswers[currentQuestion] = answerController.text;

      // Clear the answer field for the next question
      answerController.clear();

      // Check if there are more questions
      if (currentQuestionIndex < questions.length - 1) {
        setState(() {
          currentQuestionIndex++;
        });
      } else {
        // Set flag when all questions are answered
        setState(() {
          allQuestionsAnswered = true;
        });
        // Optionally serialize questionAnswers to JSON or navigate away
        print("All questions answered. Data: ${questionAnswers}");
      }
    }
  }

  void submitAnswers() {
    print("Submitting answers: ${questionAnswers}");
  }

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
      body: SingleChildScrollView(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 80, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20),
                        const Text('Question:',
                            style: TextStyle(
                              color: SystemColors.headerColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 35,
                            )),
                        Text(
                            questions.isNotEmpty
                                ? questions[currentQuestionIndex]
                                : "Loading questions...",
                            style: TextStyle(
                              color: SystemColors.headerColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                            )),
                        const SizedBox(height: 35),
                        if (!allQuestionsAnswered) // Only show next button if not all questions answered
                          ElevatedButton(
                            onPressed: nextQuestion,
                            child: Text("Next Question"),
                          ),
                        if (allQuestionsAnswered) // Show submit button when all questions are answered
                          ElevatedButton(
                            onPressed: submitAnswers,
                            child: Text("Submit Answers"),
                          ),
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
                            controller: answerController,
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
                  ),
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
      ),
    );
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

  // Widget _buildQuestionSection() {
  Widget _buildSubmitButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 10),
      child: ElevatedButton(
        child: Text(
          'Submit',
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
          evaluateViewModel.evaluation(context, questionAnswers);
        },
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
