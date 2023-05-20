import 'package:boulder/addworkout/workout_screen.dart';
import 'package:boulder/futureprovider/future_provider_screen.dart';
import 'package:boulder/provider/provider_screen.dart';
import 'package:boulder/router/router_names.dart';
import 'package:boulder/router/router_paths.dart';
import 'package:go_router/go_router.dart';

import '../home/home_screen.dart';
import '../stateprovider/state_provider_screen.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: RouterPaths.home,
      builder: (context, state) => const HomeScreen(),
      name: RouterNames.home,
    ),
    GoRoute(
      path: RouterPaths.addWorkout,
      builder: (context, state) => const AddWorkoutScreen(),
      name: RouterNames.addWorkout,
    ),
    GoRoute(
      path: RouterPaths.provider,
      builder: (context, state) => const ProviderScreen(),
      name: RouterNames.provider,
    ),
    GoRoute(
      path: RouterPaths.stateProvider,
      builder: (context, state) => const StateProviderScreen(),
      name: RouterNames.stateProvider,
    ),
    GoRoute(
      path: RouterPaths.futureProvider,
      builder: (context, state) => const FutureProviderScreen(),
      name: RouterNames.futureProvider,
    )
  ],
);
