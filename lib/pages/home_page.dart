import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod ZtoH'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FilledButton(
              onPressed: () => context.push('/state-provider'),
              child: const Text('StateProvider'),
            ),
            const SizedBox(
              height: 16,
            ),
            FilledButton(
              onPressed: () => context.push('/notifier'),
              child: const Text('Notifier e AsyncNotifier'),
            ),
          ],
        ),
      ),
    );
  }
}
