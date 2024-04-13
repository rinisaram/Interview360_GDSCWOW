// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:flutter_web_interview_360_front_end/screens/home_screen.dart'
    as _i1;
import 'package:flutter_web_interview_360_front_end/screens/profile_details_screen.dart'
    as _i2;
import 'package:flutter_web_interview_360_front_end/screens/profile_screen.dart'
    as _i3;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    HomeScreenRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomeScreen(),
      );
    },
    ProfileDetailsScreenRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileDetailsScreenRouteArgs>();
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.ProfileDetailsScreen(
          key: args.key,
          name: args.name,
          age: args.age,
        ),
      );
    },
    ProfileScreenRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.ProfileScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomeScreen]
class HomeScreenRoute extends _i4.PageRouteInfo<void> {
  const HomeScreenRoute({List<_i4.PageRouteInfo>? children})
      : super(
          HomeScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeScreenRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ProfileDetailsScreen]
class ProfileDetailsScreenRoute
    extends _i4.PageRouteInfo<ProfileDetailsScreenRouteArgs> {
  ProfileDetailsScreenRoute({
    _i5.Key? key,
    required String name,
    required int age,
    List<_i4.PageRouteInfo>? children,
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

  static const _i4.PageInfo<ProfileDetailsScreenRouteArgs> page =
      _i4.PageInfo<ProfileDetailsScreenRouteArgs>(name);
}

class ProfileDetailsScreenRouteArgs {
  const ProfileDetailsScreenRouteArgs({
    this.key,
    required this.name,
    required this.age,
  });

  final _i5.Key? key;

  final String name;

  final int age;

  @override
  String toString() {
    return 'ProfileDetailsScreenRouteArgs{key: $key, name: $name, age: $age}';
  }
}

/// generated route for
/// [_i3.ProfileScreen]
class ProfileScreenRoute extends _i4.PageRouteInfo<void> {
  const ProfileScreenRoute({List<_i4.PageRouteInfo>? children})
      : super(
          ProfileScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileScreenRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
