import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kerlos_sherif/core/configs/connection/network_check.dart';

abstract class AppRouter {
  static final GoRouter router = GoRouter(routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) => NetworkChecking(),
    ),
  ]);
}
