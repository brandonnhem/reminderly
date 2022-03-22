import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import '../ui/new_reminder.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: Remindly, initial: true, path: '/home'),
    AutoRoute(page: NewReminder, path: '/new-reminder'),
  ]
)
class $AppRouter {}