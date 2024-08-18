import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_zero_hero_thecmmbay/i10n/hardcoded_strings.dart';
import 'package:riverpod_zero_hero_thecmmbay/utils/utils.dart';

class StateProviderPage extends ConsumerWidget {
  const StateProviderPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StateProvider'.hardcoded),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 8),
            child: IconButton(
              onPressed: () => goToUrl(
                  "https://riverpod.dev/docs/providers/state_provider"
                      .hardcoded),
              icon: const Icon(Icons.info_outline),
            ),
          ),
        ],
      ),
      body: const SizedBox.shrink(),
    );
  }
}
