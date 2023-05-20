import 'package:boulder/futureprovider/services/service_api.dart';
import 'package:boulder/futureprovider/services/suggestions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final suggestionsFutureProvider =
    FutureProvider.autoDispose<Suggestions>((ref) async {
  final apiService = ref.watch(apiServiceProvider);
  return apiService.getSuggestions();
});

class FutureProviderScreen extends ConsumerWidget {
  const FutureProviderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final suggestionsRef = ref.watch(suggestionsFutureProvider);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('FutureProvider'),
      ),
      body: Center(
        child: suggestionsRef.when(
          data: (data) => Text(data.price.toString()),
          error: (error, stackTrace) => Text(error.toString()),
          loading: () => const CircularProgressIndicator(),
        ),
      ),
    );
  }
}
