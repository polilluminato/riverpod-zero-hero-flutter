import 'package:go_router/go_router.dart';
import 'package:riverpod_zero_hero_thecmmbay/pages/home_page.dart';
import 'package:riverpod_zero_hero_thecmmbay/pages/notifier_page.dart';
import 'package:riverpod_zero_hero_thecmmbay/pages/state_provider_page.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (_, __) {
        return const HomePage();
      },
    ),
    GoRoute(
      path: '/state-provider',
      builder: (_, __) {
        return const StateProviderPage();
      },
    ),
    GoRoute(
      path: '/notifier',
      builder: (_, __) {
        return const NotifierPage();
      },
    ),
  ],
);
