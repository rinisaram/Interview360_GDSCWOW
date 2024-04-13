import 'package:auto_route/auto_route.dart';

import 'routes_imports.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Route')
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.custom();
  @override
  List<CustomRoute> get routes => [
        CustomRoute(
          page: HomeScreenRoute.page,
          path: '/',
          initial: true,
          transitionsBuilder: TransitionsBuilders.slideLeft,
        ),
        CustomRoute(
          page: ProfileScreenRoute.page,
          path: '/profile',
          transitionsBuilder: TransitionsBuilders.slideRight,
        ),
        CustomRoute(
          page: ProfileDetailsScreenRoute.page,
          path: '/profile-details',
          transitionsBuilder: TransitionsBuilders.slideLeft,
        ),
      ];
}
