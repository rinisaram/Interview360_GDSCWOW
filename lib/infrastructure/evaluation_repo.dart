import 'dart:convert';

import 'package:velocity_x/velocity_x.dart';

import '../core/data/api_client.dart';
import '../core/data/api_endpoint.dart';
import '../domain/evaluate_models/evaluate_models.dart';

class EvaluationRepo extends ApiClient {
  EvaluationRepo();
// POST
  Future<EvaluateAnswersModels> evaluateQsnts(
      Map<String, String> answers, context) async {
    Map body = answers;
    print('..........>$body');
    try {
      final response =
          await postRequest(path: ApiEndPointUrls.evaluateResp, body: body);

      if (response.statusCode == 200) {
        final responseData =
            evaluateAnswersModelsFromJson(jsonEncode(response.data));
        return responseData;
      } else {
        EvaluateAnswersModels();
      }
    } on Exception catch (e) {
      VxToast.show(context, msg: e.toString());
      EvaluateAnswersModels();
    }
    return EvaluateAnswersModels();
  }
}
