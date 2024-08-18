import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_zero_hero_thecmmbay/i10n/hardcoded_strings.dart';
import 'package:riverpod_zero_hero_thecmmbay/utils/utils.dart';

final indexTabProvider = StateProvider<int>((ref) => 0);

class StateProviderPage extends ConsumerWidget {
  const StateProviderPage({super.key});

  final int tabCount = 5;

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 128,
            margin: const EdgeInsets.only(
              left: 16,
              right: 16,
              top: 32,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: Theme.of(context).primaryColor, // Colore del bordo
                width: 1, // Spessore del bordo
              ),
            ),
            child: Center(
              child: Text("Tab ${ref.watch(indexTabProvider)}"),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: NavigationBar(
              onDestinationSelected: (int index) {
                ref.read(indexTabProvider.notifier).state = index;
              },
              selectedIndex: ref.watch(indexTabProvider),
              destinations: List<Widget>.generate(
                tabCount,
                (int index) {
                  return NavigationDestination(
                    icon: const Icon(Icons.tab),
                    label: "Tab $index".hardcoded,
                  );
                },
              ),
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FilledButton(
                onPressed: () {
                  int selectedTab = ref.read(indexTabProvider.notifier).state;
                  if (selectedTab > 0) {
                    ref
                        .read(indexTabProvider.notifier)
                        .update((state) => state - 1);
                  }
                },
                child: Text('Prev'.hardcoded),
              ),
              const SizedBox(
                width: 24,
              ),
              FilledButton(
                onPressed: () {
                  int selectedTab = ref.read(indexTabProvider.notifier).state;
                  if (selectedTab < tabCount - 1) {
                    ref
                        .read(indexTabProvider.notifier)
                        .update((state) => state + 1);
                  }
                },
                child: Text('Next'.hardcoded),
              ),
            ],
          )
        ],
      ),
    );
  }
}
