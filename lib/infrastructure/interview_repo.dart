import 'dart:convert';
import 'package:velocity_x/velocity_x.dart';

import '../core/data/api_client.dart';
import '../core/data/api_endpoint.dart';
import '../domain/interview_models.dart';

class InterviewRepo extends ApiClient {
  InterviewRepo();
// POST
  Future<InterviewQuestions> interviewQsnts(
      String job_role, int num_questions, context) async {
    Map body = {
      "job_role": job_role,
      "num_questions": num_questions,
    };

    try {
      final response =
          await postRequest(path: ApiEndPointUrls.generateQsnt, body: body);

      if (response.statusCode == 200) {
        final responseData =
            interviewQuestionsFromJson(jsonEncode(response.data));
        return responseData;
      } else {
        InterviewQuestions();
      }
    } on Exception catch (e) {
      VxToast.show(context, msg: e.toString());
      InterviewQuestions();
    }
    return InterviewQuestions();
  }
}
