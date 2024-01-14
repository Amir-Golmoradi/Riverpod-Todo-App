import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:todoapp/src/config/routes/approutes.dart';
import 'package:todoapp/src/config/routes/route_location.dart';

final routingKey = GlobalKey<NavigatorState>();
final routesProvider = Provider<GoRouter>(
  (ref) {
    return GoRouter(
      routes: appRoutes,
      initialLocation: RouterLocation.home,
      navigatorKey: routingKey,
    );
  },
);
