import 'package:flutter/material.dart';
import 'package:riverpod_zero_hero_thecmmbay/app/router.dart';

class App extends StatelessWidget {
  App({super.key});

  final router = buildRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.green,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
      ),
    );
  }
}
