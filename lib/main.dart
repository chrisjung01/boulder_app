import 'package:boulder/addworkout/presentation/add_workout_notifier/workout_notifier.dart';
import 'package:boulder/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final addWorkoutProvider =
    StateNotifierProvider<WorkoutNotifier, int>((ref) => WorkoutNotifier(0));

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.grey,
        ),
      ),
      routerConfig: router,
    );
  }
}
