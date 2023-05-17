import 'package:flutter/material.dart';

class AddWorkoutScreen extends StatelessWidget {
  const AddWorkoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text('Add Workout')),
      body: Center(
        child: Text('Add Workout'),
      ),
    );
  }
}
