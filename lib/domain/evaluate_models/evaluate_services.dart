import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:velocity_bloc/velocity_bloc.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../infrastructure/repository.dart';
import '../../routes/routes_imports.gr.dart';
import '../../utils/utils.dart';

class EvaluateQsntsViewModel {
  final Repository repository;

  EvaluateQsntsViewModel({
    required this.repository,
  });

  final formKey = GlobalKey<FormState>();

  final VelocityBloc<bool> isLoadingBloc = VelocityBloc<bool>(false);

  evaluation(BuildContext context, Map<String, String> answers) async {
    isLoadingBloc.onUpdateData(true);

    var evalRespdata =
        await repository.evaluationRepo.evaluateQsnts(answers, context);

    VxToast.show(
        showTime: 6000, context, msg: evalRespdata.toJson().toString());
    if (evalRespdata.evaluations != null) {
      Utils.saveEvaluation(
        evalRespdata.evaluations.toString().split(','),
      );
      AutoRouter.of(context).push(const EvalutionResultRoute());
    }
    isLoadingBloc.onUpdateData(false);
  }
}
