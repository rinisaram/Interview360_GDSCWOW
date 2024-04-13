import 'package:auto_route/auto_route.dart';

import 'routes_imports.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Route')
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.custom();
  @override
  List<CustomRoute> get routes => [
        CustomRoute(
          page: SplashScreenRoute.page,
          path: '/',
          initial: true,
          transitionsBuilder: TransitionsBuilders.slideLeft,
        ),
        CustomRoute(
          page: HomeScreenRoute.page,
          path: '/home',
          transitionsBuilder: TransitionsBuilders.slideLeft,
        ),
        CustomRoute(
          page: InterviewScreenRoute.page,
          path: '/intrerview',
          transitionsBuilder: TransitionsBuilders.slideLeft,
        ),
        CustomRoute(
          page: ResumeScreenRoute.page,
          path: '/resume',
          transitionsBuilder: TransitionsBuilders.slideLeft,
        ),
        CustomRoute(
          page: AboutUsScrenRoute.page,
          path: '/aboutus',
          transitionsBuilder: TransitionsBuilders.slideRight,
        ),
        CustomRoute(
          page: ContactUsScreenRoute.page,
          path: '/contactus',
          transitionsBuilder: TransitionsBuilders.slideLeft,
        ),
      ];
}
