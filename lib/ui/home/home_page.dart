import 'package:flutter/material.dart';
import 'package:sdf_app_architecture/ui/auth/logout/widgets/logout_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          const LogoutButton(),
        ],
      ),
      body: Center(
        child: Text('Home'),
      ),
    );
  }
}