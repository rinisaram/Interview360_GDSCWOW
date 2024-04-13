import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:velocity_bloc/cubit/velocity_cubit/velocity_cubit.dart';
import 'package:velocity_x/velocity_x.dart';

import '../infrastructure/repository.dart';
import '../routes/routes_imports.gr.dart';
import '../utils/utils.dart';

class InterviewQsntsViewModel {
  final Repository repository;

  InterviewQsntsViewModel({
    required this.repository,
  });

  final formKey = GlobalKey<FormState>();

  int? numQust;
  String? jobroles;
  void getNumQust(int? newValue) {
    numQust = newValue;
  }

  void jobrole(String? newValue) {
    jobroles = newValue;
  }

  final VelocityBloc<bool> isLoadingBloc = VelocityBloc<bool>(false);

  interview(context) async {
    isLoadingBloc.onUpdateData(true);

    var respdata = await repository.interviewRepo
        .interviewQsnts(jobroles!, numQust!, context);

    VxToast.show(context, msg: respdata.questions.toString());
    if (respdata.questions != null) {
      Utils.saveQuestions(
        respdata.questions!.values.toList(),
      );
      AutoRouter.of(context).push(const HomeScreenRoute());
    }
    isLoadingBloc.onUpdateData(false);
  }
}
