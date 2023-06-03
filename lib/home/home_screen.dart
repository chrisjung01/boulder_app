import 'package:boulder/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../router/router_names.dart';

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
                const Text('Boulder app - Version 2'),
                Consumer(
                  builder: (context, ref, _) {
                    final counter = ref.watch(addWorkoutProvider);
                    return Text('Workouts: $counter');
                  },
                ),
                Container(
                  height: 20,
                ),
                _addWorkout(context),
                const ProviderButton(),
                const StateProvider(),
                const FutureProviderButton(),
                const StreamProviderButton(),
                const ChangeNotifierProviderButton(),
              ],
            ),
          ),
        ));
  }

// bad practices this should be a widget
  ElevatedButton _addWorkout(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        context.pushNamed(RouterNames.addWorkout);
      },
      child: const Text('Add workout'),
    );
  }
}

class StateProvider extends StatelessWidget {
  const StateProvider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        context.pushNamed(RouterNames.stateProvider);
      },
      child: const Text('StateProvider'),
    );
  }
}

// good practices. This is how it should work
class ProviderButton extends StatelessWidget {
  const ProviderButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        context.pushNamed(RouterNames.provider);
      },
      child: const Text('Provider'),
    );
  }
}

class FutureProviderButton extends StatelessWidget {
  const FutureProviderButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        context.pushNamed(RouterNames.futureProvider);
      },
      child: const Text('FutureProvider'),
    );
  }
}

class StreamProviderButton extends StatelessWidget {
  const StreamProviderButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        context.pushNamed(RouterNames.streamProvider);
      },
      child: const Text('StreamProvider'),
    );
  }
}

class ChangeNotifierProviderButton extends StatelessWidget {
  const ChangeNotifierProviderButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        context.pushNamed(RouterNames.changeNotifierProvider);
      },
      child: const Text('ChangeNotifierProvider'),
    );
  }
}
