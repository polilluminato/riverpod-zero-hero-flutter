import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_zero_hero_thecmmbay/l10n/hardcoded_strings.dart';
import 'package:riverpod_zero_hero_thecmmbay/provider/notifier_provider.dart';
import 'package:riverpod_zero_hero_thecmmbay/utils/utils.dart';

class NotifierPage extends ConsumerWidget {
  const NotifierPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final myPizzaProvider = ref.watch(pizzaProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('(Async)NotifierProvider'.hardcoded),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 8),
            child: IconButton(
              onPressed: () => goToUrl(
                  "https://riverpod.dev/docs/providers/notifier_provider"
                      .hardcoded),
              icon: const Icon(Icons.info_outline),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(myPizzaProvider.linkImpasto),
                Image.asset(myPizzaProvider.linkSalsa),
                Image.asset(myPizzaProvider.linkCondimento),
              ],
            ),
            gapH(20),
            Text("Impasto".hardcoded),
            DropdownButtonFormField(
              value: impastoOptionList[0].link,
              onChanged: (value) {
                ref.read(pizzaProvider.notifier).changeImpasto(value!);
              },
              items: impastoOptionList
                  .map(
                    (singleOption) => DropdownMenuItem(
                      value: singleOption.link,
                      child: Text(
                        singleOption.name,
                      ),
                    ),
                  )
                  .toList(),
            ),
            gapH(20),
            Text("Salsa".hardcoded),
            DropdownButtonFormField(
              value: salsaOptionList[0].link,
              onChanged: (value) {
                ref.read(pizzaProvider.notifier).changeSalsa(value!);
              },
              items: salsaOptionList
                  .map(
                    (singleOption) => DropdownMenuItem(
                      value: singleOption.link,
                      child: Text(
                        singleOption.name,
                      ),
                    ),
                  )
                  .toList(),
            ),
            gapH(20),
            Text("Condimento".hardcoded),
            DropdownButtonFormField(
              value: condimentoOptionList[0].link,
              onChanged: (value) {
                ref.read(pizzaProvider.notifier).changeCondimento(value!);
              },
              items: condimentoOptionList
                  .map(
                    (singleOption) => DropdownMenuItem(
                      value: singleOption.link,
                      child: Text(
                        singleOption.name,
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
