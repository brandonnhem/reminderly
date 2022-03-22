// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../main.dart' as _i1;
import '../ui/new_reminder.dart' as _i2;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    Remindly.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.Remindly());
    },
    NewReminder.name: (routeData) {
      final args = routeData.argsAs<NewReminderArgs>(
          orElse: () => const NewReminderArgs());
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.NewReminder(key: args.key));
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig('/#redirect',
            path: '/', redirectTo: '/home', fullMatch: true),
        _i3.RouteConfig(Remindly.name, path: '/home'),
        _i3.RouteConfig(NewReminder.name, path: '/new-reminder')
      ];
}

/// generated route for
/// [_i1.Remindly]
class Remindly extends _i3.PageRouteInfo<void> {
  const Remindly() : super(Remindly.name, path: '/home');

  static const String name = 'Remindly';
}

/// generated route for
/// [_i2.NewReminder]
class NewReminder extends _i3.PageRouteInfo<NewReminderArgs> {
  NewReminder({_i4.Key? key})
      : super(NewReminder.name,
            path: '/new-reminder', args: NewReminderArgs(key: key));

  static const String name = 'NewReminder';
}

class NewReminderArgs {
  const NewReminderArgs({this.key});

  final _i4.Key? key;

  @override
  String toString() {
    return 'NewReminderArgs{key: $key}';
  }
}
