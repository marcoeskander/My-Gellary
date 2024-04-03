import 'package:go_router/go_router.dart';
import 'package:my_gallery/feature/home/presentaion/home_view.dart';

import '../feature/login/presentaion/login_view.dart';

class AppRouter {
  static const lHome = '/homeview';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: lHome,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
