import 'package:flutter/material.dart';
import 'package:routefly/routefly.dart';
import 'package:sdf_app_architecture/config/dependencies.dart';
import 'package:sdf_app_architecture/domain/entities/user_entity.dart';
import 'package:sdf_app_architecture/main_viewmodel.dart';

import 'main.route.dart';
part 'main.g.dart';

void main() {
  setupDependencies();

  runApp(const MainApp());
}

@Main('lib/ui/')
class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final mainViewmodel = injector.get<MainViewmodel>();

  @override
  void initState() {
    super.initState();
    mainViewmodel.addListener(() {
      if (mainViewmodel.user is LoggedUser) {
        Routefly.push(routePaths.home);
      } else {
        Routefly.push(routePaths.auth.login);
      }
    });
  }
  
  @override
  void dispose() {
    mainViewmodel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: Routefly.routerConfig(
        routes: routes,
        initialPath: routePaths.auth.login
      ),
    );
  }
}
