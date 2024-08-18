import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_zero_hero_thecmmbay/i10n/hardcoded_strings.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Riverpod ZtoH'.hardcoded),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FilledButton(
              onPressed: () => context.push('/state-provider'),
              child: Text('StateProvider'.hardcoded),
            ),
            const SizedBox(
              height: 16,
            ),
            FilledButton(
              onPressed: () => context.push('/notifier'),
              child: Text('(Async)NotifierProvider'.hardcoded),
            ),
          ],
        ),
      ),
    );
  }
}
