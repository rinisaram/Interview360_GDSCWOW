import 'package:shared_preferences/shared_preferences.dart';

class Utils {
  static const String _questionsKey = 'questions';

//======================SAVE=============================\\
  static Future<void> saveQuestions(List<String> questions) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(_questionsKey, questions);
  }

  // Retrieve list of questions
  static Future<List<String>?> getQuestions() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(_questionsKey);
  }

  static Future<void> saveEvaluation(List<String> questions) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(_questionsKey, questions);
  }

  static Future<List<String>?> getEvaluation() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(_questionsKey);
  }
}
