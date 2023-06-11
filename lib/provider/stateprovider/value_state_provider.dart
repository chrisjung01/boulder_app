import 'package:flutter_riverpod/flutter_riverpod.dart';

// autoDispose will invalidate the state when we left the screen for example
// final valueStateProvider = StateProvider.autoDispose<int>((ref) => 50);
final valueStateProvider = StateProvider<int>((ref) => 50);
