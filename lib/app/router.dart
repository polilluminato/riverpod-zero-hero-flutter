import 'package:go_router/go_router.dart';
import 'package:riverpod_zero_hero_thecmmbay/pages/home_page.dart';

GoRouter buildRouter() {
  return GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          return const HomePage();
        },
      ),
    ],
  );
}
