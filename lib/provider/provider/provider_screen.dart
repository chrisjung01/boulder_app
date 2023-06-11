import 'package:boulder/provider/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProviderScreen extends StatelessWidget {
  const ProviderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Provider'),
      ),
      body: Center(
        child: Consumer(
          builder: (context, ref, child) {
            return Text('The provider value is: ${ref.read(provider)}');
          },
        ),
      ),
    );
  }
}
