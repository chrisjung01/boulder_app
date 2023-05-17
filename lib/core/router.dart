import 'package:boulder/addworkout/add_workout_screen.dart';
import 'package:boulder/core/router_names.dart';
import 'package:boulder/core/router_paths.dart';
import 'package:go_router/go_router.dart';

import '../home/home_screen.dart';

final GoRouter router = GoRouter(routes: <RouteBase>[
  GoRoute(
    path: RouterPaths.home,
    builder: (context, state) => const HomeScreen(),
    name: RouterNames.home,
  ),
  GoRoute(
    path: RouterPaths.addWorkout,
    builder: (context, state) => const AddWorkoutScreen(),
    name: RouterNames.addWorkout,
  )
]);
