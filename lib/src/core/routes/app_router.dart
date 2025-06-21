import 'package:auto_route/auto_route.dart';
import 'package:nisha1/src/features/splash/presentation/pages/default_splash_page.dart';
import 'package:nisha1/src/features/home/presentation/pages/home_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: DefaultSplashRoute.page, path: '/splash', initial: true),
    AutoRoute(page: HomeRoute.page),
  ];
}
