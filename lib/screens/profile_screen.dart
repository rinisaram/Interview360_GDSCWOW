import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../routes/routes_imports.gr.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Screen'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            AutoRouter.of(context).push(ProfileDetailsScreenRoute(
              name: 'John Doe',
              age: 30,
            ));
          },
          child: const Text('Goto Profile Details Screen'),
        ),
      ),
    );
  }
}
