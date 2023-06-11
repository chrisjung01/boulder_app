import 'package:boulder/provider/futureprovider/services/service_api.dart';
import 'package:boulder/provider/futureprovider/services/suggestions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'future_provider.dart';

final suggestionsFutureProvider =
    FutureProvider.autoDispose<Suggestions>((ref) async {
  final apiService = ref.watch(apiServiceProvider);
  return apiService.getSuggestions();
});

class FutureProviderScreen extends ConsumerWidget {
  const FutureProviderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // a simple test with random int value
    final suggestionsRef = ref.watch(configurationsProvider);
    // sample with api call
    // final suggestionsRef = ref.watch(suggestionsFutureProvider);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('FutureProvider'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            suggestionsRef.when(
              // a simple test with random int value
              data: (data) => Text(data),
              // sample with api call
              // data: (data) => Text(data.activity ?? ''),
              error: (error, stackTrace) => Text(error.toString()),
              loading: () => const CircularProgressIndicator(),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () => ref.refresh(configurationsProvider.future),
              child: const Text('Refresh data'),
            )
          ],
        ),
      ),
    );
  }
}
