import 'package:boulder/provider/stateprovider/value_state_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StateProviderScreen extends ConsumerWidget {
  const StateProviderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(valueStateProvider);

    // listen to changes and can trigger a value
    // can be used for snackbars, dialogs or make some navigation
    ref.listen<int>(valueStateProvider, (previous, next) {
      if (next == 65) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Content is 65'),
          ),
        );
      }
    });

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('StateProvider'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('The value is $value'),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                // use the notifier here to update the state
                ref.read(valueStateProvider.notifier).state++;
              },
              child: const Text('Increment'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                // use to reset the state
                ref.invalidate(valueStateProvider);
              },
              child: const Text('Invalidate'),
            )
          ],
        ),
      ),
    );
  }
}
