// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;
import 'package:flutter_web_interview_360_front_end/screens/home_screen.dart'
    as _i1;
import 'package:flutter_web_interview_360_front_end/screens/profile_details_screen.dart'
    as _i2;
import 'package:flutter_web_interview_360_front_end/screens/profile_screen.dart'
    as _i3;
import 'package:flutter_web_interview_360_front_end/screens/splash_screen/splash_screen.dart'
    as _i4;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    HomeScreenRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomeScreen(),
      );
    },
    ProfileDetailsScreenRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileDetailsScreenRouteArgs>();
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.ProfileDetailsScreen(
          key: args.key,
          name: args.name,
          age: args.age,
        ),
      );
    },
    ProfileScreenRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.ProfileScreen(),
      );
    },
    SplashScreenRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.SplashScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomeScreen]
class HomeScreenRoute extends _i5.PageRouteInfo<void> {
  const HomeScreenRoute({List<_i5.PageRouteInfo>? children})
      : super(
          HomeScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeScreenRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ProfileDetailsScreen]
class ProfileDetailsScreenRoute
    extends _i5.PageRouteInfo<ProfileDetailsScreenRouteArgs> {
  ProfileDetailsScreenRoute({
    _i6.Key? key,
    required String name,
    required int age,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          ProfileDetailsScreenRoute.name,
          args: ProfileDetailsScreenRouteArgs(
            key: key,
            name: name,
            age: age,
          ),
          initialChildren: children,
        );

  static const String name = 'ProfileDetailsScreenRoute';

  static const _i5.PageInfo<ProfileDetailsScreenRouteArgs> page =
      _i5.PageInfo<ProfileDetailsScreenRouteArgs>(name);
}

class ProfileDetailsScreenRouteArgs {
  const ProfileDetailsScreenRouteArgs({
    this.key,
    required this.name,
    required this.age,
  });

  final _i6.Key? key;

  final String name;

  final int age;

  @override
  String toString() {
    return 'ProfileDetailsScreenRouteArgs{key: $key, name: $name, age: $age}';
  }
}

/// generated route for
/// [_i3.ProfileScreen]
class ProfileScreenRoute extends _i5.PageRouteInfo<void> {
  const ProfileScreenRoute({List<_i5.PageRouteInfo>? children})
      : super(
          ProfileScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileScreenRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.SplashScreen]
class SplashScreenRoute extends _i5.PageRouteInfo<void> {
  const SplashScreenRoute({List<_i5.PageRouteInfo>? children})
      : super(
          SplashScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashScreenRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
