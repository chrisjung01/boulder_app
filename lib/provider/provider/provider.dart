import 'package:flutter_riverpod/flutter_riverpod.dart';

// read only value
// should be used to read some customlogger or repositories
final provider = Provider<int>((ref) => 12);
