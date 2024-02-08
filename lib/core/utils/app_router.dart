import 'package:go_router/go_router.dart';
import 'package:vodafone/features/home/presentation/view/home_view.dart';
import 'package:vodafone/features/splash/presentation/view/splach_view.dart';

abstract class AppRouter {
  static const kHomeview = "/homeview";
  static const kBookdetails = "/Bookdetails";
  static const kSearchview = "/searchview";
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplachView(),
      ),
      GoRoute(
        path: kHomeview,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
