import 'package:flutter/material.dart';
import 'package:sdf_app_architecture/config/dependencies.dart';
import 'package:sdf_app_architecture/ui/auth/logout/viewmodel/logout_viewmodel.dart';

class LogoutButton extends StatefulWidget {
  const LogoutButton({super.key});

  @override
  State<LogoutButton> createState() => _LogoutButtonState();
}

class _LogoutButtonState extends State<LogoutButton> {
  final viewModel = injector.get<LogoutViewmodel>();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: viewModel.logoutCommand.execute,
        child: Text('Logout')
      );
  }
}