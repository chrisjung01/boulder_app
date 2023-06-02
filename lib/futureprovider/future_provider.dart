import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final configurationsProvider = FutureProvider.autoDispose<String>((ref) async {
  final value = await Future.delayed(const Duration(seconds: 3), () {
    return Random().nextInt(100).toString();
  });

  return value;
});
