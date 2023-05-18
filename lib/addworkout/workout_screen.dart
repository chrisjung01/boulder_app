import 'package:boulder/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddWorkoutScreen extends ConsumerWidget {
  const AddWorkoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text('Add Workout')),
      body: Container(
        constraints: const BoxConstraints.expand(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer(
              builder: (context, ref, child) =>
                  Text('${ref.watch(addWorkoutProvider)}'),
            ),
            ElevatedButton(
              onPressed: () {
                ref.read(addWorkoutProvider.notifier).add(1);
              },
              child: const Text('Add Workout'),
            ),
            ElevatedButton(
              onPressed: () {
                ref.read(addWorkoutProvider.notifier).remove(1);
              },
              child: const Text('Update Workout'),
            )
          ],
        ),
      ),
    );
  }
}
