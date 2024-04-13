import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../routes/routes_imports.gr.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            AutoRouter.of(context).push(const ProfileScreenRoute());
          },
          child: const Text('Goto Profile Screen'),
        ),
      ),
    );
  }
}
