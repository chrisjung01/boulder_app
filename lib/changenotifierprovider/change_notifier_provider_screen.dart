import 'package:boulder/changenotifierprovider/service/change_notifier_service.dart';
import 'package:boulder/streamprovider/service/stream_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChangeNotifierProviderScreen extends ConsumerWidget {
  const ChangeNotifierProviderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final streamValue = ref.watch(streamValueProvider);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('ChangeNotifierProvider'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
