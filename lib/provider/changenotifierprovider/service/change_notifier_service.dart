import 'package:flutter_riverpod/flutter_riverpod.dart';

final changeNotifierProvider = Provider<ChangeNotifierService>((ref) {
  return ChangeNotifierService();
});

class ChangeNotifierService {
  Stream<int> getStream() {
    return Stream.periodic(
      const Duration(seconds: 1),
      (i) => i,
    ).take(10);
  }
}
