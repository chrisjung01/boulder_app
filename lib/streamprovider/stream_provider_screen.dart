import 'package:boulder/streamprovider/service/stream_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final streamValueProvider = StreamProvider.autoDispose((ref) {
  final streamService = ref.watch(streamServiceProvider);
  return streamService.getStream();
});

class StreamProviderScreen extends ConsumerWidget {
  const StreamProviderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final streamValue = ref.watch(streamValueProvider);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('FutureProvider'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: streamValue.when(
                data: (data) => Text(data.toString()),
                error: (error, stackTrace) => Text(error.toString()),
                loading: () => const CircularProgressIndicator(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
