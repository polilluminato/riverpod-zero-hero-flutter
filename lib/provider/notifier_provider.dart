import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'notifier_provider.g.dart';

class PizzaOption {
  final String name;
  final String link;

  PizzaOption({required this.name, required this.link});
}

class MyPizza {
  final String linkImpasto;
  final String linkSalsa;
  final String linkCondimento;

  MyPizza({
    required this.linkImpasto,
    required this.linkSalsa,
    required this.linkCondimento,
  });

  MyPizza copyWith({
    String? linkImpasto,
    String? linkSalsa,
    String? linkCondimento,
  }) {
    return MyPizza(
      linkImpasto: linkImpasto ?? this.linkImpasto,
      linkSalsa: linkSalsa ?? this.linkSalsa,
      linkCondimento: linkCondimento ?? this.linkCondimento,
    );
  }
}

List<PizzaOption> impastoOptionList = [
  PizzaOption(name: "Empty Impasto", link: ""),
  PizzaOption(name: "Classico", link: "assets/layer/impasto/classico.png"),
  PizzaOption(name: "Integrale", link: "assets/layer/impasto/integrale.png"),
  PizzaOption(name: "Farro", link: "assets/layer/impasto/farro.png"),
];

List<PizzaOption> salsaOptionList = [
  PizzaOption(name: "Empty Salsa", link: ""),
  PizzaOption(name: "Pomodoro", link: "assets/layer/salsa/pomodoro.png"),
  PizzaOption(name: "Formaggio", link: "assets/layer/salsa/formaggio.png"),
  PizzaOption(name: "Zucca", link: "assets/layer/salsa/zucca.png"),
];

List<PizzaOption> condimentoOptionList = [
  PizzaOption(name: "Empty Condimento", link: ""),
  PizzaOption(
      name: "Mozzarella", link: "assets/layer/condimento/mozzarella.png"),
  PizzaOption(name: "Patate", link: "assets/layer/condimento/patate.png"),
  PizzaOption(name: "Peperoni", link: "assets/layer/condimento/peperoni.png"),
];

@riverpod
class Pizza extends _$Pizza {
  @override
  MyPizza build() {
    return MyPizza(linkCondimento: "", linkImpasto: "", linkSalsa: "");
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
