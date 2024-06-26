// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;
import 'package:flutter_web_interview_360_front_end/screens/about_us/about_us.dart'
    as _i1;
import 'package:flutter_web_interview_360_front_end/screens/contact_us/contact_us.dart'
    as _i2;
import 'package:flutter_web_interview_360_front_end/screens/evaluations%20_result/evaluation_result.dart'
    as _i3;
import 'package:flutter_web_interview_360_front_end/screens/home_screen.dart'
    as _i4;
import 'package:flutter_web_interview_360_front_end/screens/interview_prep/interview_prep.dart'
    as _i5;
import 'package:flutter_web_interview_360_front_end/screens/profile_details_screen.dart'
    as _i6;
import 'package:flutter_web_interview_360_front_end/screens/profile_screen.dart'
    as _i7;
import 'package:flutter_web_interview_360_front_end/screens/resume_reviewer/resume_rev.dart'
    as _i8;
import 'package:flutter_web_interview_360_front_end/screens/splash_screen/splash_screen.dart'
    as _i9;

abstract class $AppRouter extends _i10.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    AboutUsScrenRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AboutUsScren(),
      );
    },
    ContactUsScreenRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.ContactUsScreen(),
      );
    },
    EvalutionResultRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.EvalutionResult(),
      );
    },
    HomeScreenRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.HomeScreen(),
      );
    },
    InterviewScreenRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.InterviewScreen(),
      );
    },
    ProfileDetailsScreenRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileDetailsScreenRouteArgs>();
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.ProfileDetailsScreen(
          key: args.key,
          name: args.name,
          age: args.age,
        ),
      );
    },
    ProfileScreenRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.ProfileScreen(),
      );
    },
    ResumeScreenRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.ResumeScreen(),
      );
    },
    SplashScreenRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.SplashScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AboutUsScren]
class AboutUsScrenRoute extends _i10.PageRouteInfo<void> {
  const AboutUsScrenRoute({List<_i10.PageRouteInfo>? children})
      : super(
          AboutUsScrenRoute.name,
          initialChildren: children,
        );

  static const String name = 'AboutUsScrenRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ContactUsScreen]
class ContactUsScreenRoute extends _i10.PageRouteInfo<void> {
  const ContactUsScreenRoute({List<_i10.PageRouteInfo>? children})
      : super(
          ContactUsScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'ContactUsScreenRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i3.EvalutionResult]
class EvalutionResultRoute extends _i10.PageRouteInfo<void> {
  const EvalutionResultRoute({List<_i10.PageRouteInfo>? children})
      : super(
          EvalutionResultRoute.name,
          initialChildren: children,
        );

  static const String name = 'EvalutionResultRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i4.HomeScreen]
class HomeScreenRoute extends _i10.PageRouteInfo<void> {
  const HomeScreenRoute({List<_i10.PageRouteInfo>? children})
      : super(
          HomeScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeScreenRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i5.InterviewScreen]
class InterviewScreenRoute extends _i10.PageRouteInfo<void> {
  const InterviewScreenRoute({List<_i10.PageRouteInfo>? children})
      : super(
          InterviewScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'InterviewScreenRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i6.ProfileDetailsScreen]
class ProfileDetailsScreenRoute
    extends _i10.PageRouteInfo<ProfileDetailsScreenRouteArgs> {
  ProfileDetailsScreenRoute({
    _i11.Key? key,
    required String name,
    required int age,
    List<_i10.PageRouteInfo>? children,
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

  static const _i10.PageInfo<ProfileDetailsScreenRouteArgs> page =
      _i10.PageInfo<ProfileDetailsScreenRouteArgs>(name);
}

class ProfileDetailsScreenRouteArgs {
  const ProfileDetailsScreenRouteArgs({
    this.key,
    required this.name,
    required this.age,
  });

  final _i11.Key? key;

  final String name;

  final int age;

  @override
  String toString() {
    return 'ProfileDetailsScreenRouteArgs{key: $key, name: $name, age: $age}';
  }
}

/// generated route for
/// [_i7.ProfileScreen]
class ProfileScreenRoute extends _i10.PageRouteInfo<void> {
  const ProfileScreenRoute({List<_i10.PageRouteInfo>? children})
      : super(
          ProfileScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileScreenRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i8.ResumeScreen]
class ResumeScreenRoute extends _i10.PageRouteInfo<void> {
  const ResumeScreenRoute({List<_i10.PageRouteInfo>? children})
      : super(
          ResumeScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'ResumeScreenRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i9.SplashScreen]
class SplashScreenRoute extends _i10.PageRouteInfo<void> {
  const SplashScreenRoute({List<_i10.PageRouteInfo>? children})
      : super(
          SplashScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashScreenRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}
