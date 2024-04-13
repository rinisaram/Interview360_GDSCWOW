import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'infrastructure/interview_repo.dart';
import 'infrastructure/repository.dart';
import 'routes/routes_imports.dart';

void main() {
  runApp(RepositoryProvider(
    create: (context) => Repository(
      interviewRepo: InterviewRepo(),
    ),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _appRouter.config(),
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'ProductSans',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
