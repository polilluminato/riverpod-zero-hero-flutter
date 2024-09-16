import 'package:flutter/material.dart';

class PizzaOption {
  final String name;
  final String link;

  PizzaOption({required this.name, required this.link});
}

List<PizzaOption> impastoOptionList = [
  PizzaOption(name: "Classico", link: "assets/layer/impasto/classico.png"),
  PizzaOption(name: "Integrale", link: "assets/layer/impasto/integrale.png"),
  PizzaOption(name: "Farro", link: "assets/layer/impasto/farro.png"),
];

List<PizzaOption> salsaOptionList = [
  PizzaOption(name: "Pomodoro", link: "assets/layer/salsa/pomodoro.png"),
  PizzaOption(name: "Formaggio", link: "assets/layer/salsa/formaggio.png"),
  PizzaOption(name: "Zucca", link: "assets/layer/salsa/zucca.png"),
];

List<PizzaOption> condimentoOptionList = [
  PizzaOption(
      name: "Mozzarella", link: "assets/layer/condimento/mozzarella.png"),
  PizzaOption(name: "Patate", link: "assets/layer/condimento/patate.png"),
  PizzaOption(name: "Peperoni", link: "assets/layer/condimento/peperoni.png"),
];

@immutable
class MyPizza {
  const MyPizza({
    required this.linkImpasto,
    required this.linkSalsa,
    required this.linkCondimento,
  });

  final String linkImpasto;
  final String linkSalsa;
  final String linkCondimento;

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
