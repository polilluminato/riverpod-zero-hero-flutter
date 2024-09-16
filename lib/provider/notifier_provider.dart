import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_zero_hero_thecmmbay/provider/state_class.dart';

//With code generation
/*part 'notifier_provider.g.dart';
@riverpod
class Pizza extends _$Pizza {
  @override
  MyPizza build() {
    return MyPizza(
        linkImpasto: impastoOptionList[0].link,
        linkCondimento: condimentoOptionList[0].link,
        linkSalsa: salsaOptionList[0].link);
  }

  void changeImpasto(String newImpastoLink) {
    state = state.copyWith(linkImpasto: newImpastoLink);
  }

  void changeSalsa(String newSalsaLink) {
    state = state.copyWith(linkSalsa: newSalsaLink);
  }

  void changeCondimento(String newCondimentoLink) {
    state = state.copyWith(linkCondimento: newCondimentoLink);
  }
}*/

//Without code generation
class PizzaNotifier extends Notifier<MyPizza> {
  @override
  MyPizza build() {
    return MyPizza(
        linkImpasto: impastoOptionList[0].link,
        linkCondimento: condimentoOptionList[0].link,
        linkSalsa: salsaOptionList[0].link);
  }

  void changeImpasto(String newImpastoLink) {
    state = state.copyWith(linkImpasto: newImpastoLink);
  }

  void changeSalsa(String newSalsaLink) {
    state = state.copyWith(linkSalsa: newSalsaLink);
  }

  void changeCondimento(String newCondimentoLink) {
    state = state.copyWith(linkCondimento: newCondimentoLink);
  }
}

final pizzaProvider =
    NotifierProvider<PizzaNotifier, MyPizza>(() => PizzaNotifier());
