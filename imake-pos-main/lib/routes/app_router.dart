import 'package:flutter/material.dart';
import 'package:imake/routes/pages.dart';
import 'package:imake/splash_screen.dart';
import 'package:imake/tasks/data/local/model/task_model.dart';
import 'package:imake/tasks/presentation/pages/new_task_screen.dart';
import 'package:imake/tasks/presentation/pages/tasks_screen.dart';
import 'package:imake/tasks/presentation/pages/update_task_screen.dart';
import '../page_not_found.dart';
import 'package:imake/tasks/presentation/pages/loginscreen.dart';
import 'package:imake/tasks/presentation/pages/pg_sobre.dart';

Route onGenerateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {    
    case Pages.initial:
      return MaterialPageRoute(
        builder: (context) => const SplashScreen(),
      );
    case Pages.home:
      return MaterialPageRoute(
        builder: (context) => const TasksScreen(),
      );
    case Pages.createNewTask:
      return MaterialPageRoute(
        builder: (context) => const NewTaskScreen(),
      );
    case Pages.updateTask:
      final args = routeSettings.arguments as TaskModel;
      return MaterialPageRoute(
        builder: (context) => UpdateTaskScreen(taskModel: args),
      );
    case Pages.login:
      return MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      );
    case Pages.sobre:
      return MaterialPageRoute(
        builder: (context) => const PaginaSobre(),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => const PageNotFound(),
      );
  }
}
