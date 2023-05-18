import 'package:flutter_riverpod/flutter_riverpod.dart';

class WorkoutNotifier extends StateNotifier<int> {
  WorkoutNotifier(super.state);

  void add(int number) {
    state = state + number;
  }

  void remove(int number) {
    state = state - number;
  }
}
