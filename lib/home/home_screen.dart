import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Boulder Workout'),
        ),
        body: SafeArea(
          child: Container(
            constraints: const BoxConstraints.expand(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Boulder app - Version 2'),
                Container(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    context.pushNamed('addWorkout');
                  },
                  child: Text('Add workout'),
                ),
              ],
            ),
          ),
        ));
  }
}
