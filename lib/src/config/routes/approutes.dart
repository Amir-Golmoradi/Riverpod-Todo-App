import 'package:go_router/go_router.dart';
import 'package:todoapp/src/config/routes/route_location.dart';
import 'package:todoapp/src/pages/pages.dart';
import 'package:todoapp/src/providers/routes_provider.dart';


final appRoutes = [
  GoRoute(
    path: RouterLocation.home,
        parentNavigatorKey: routingKey,

    builder: HomePage.builder,
  ),
  GoRoute(
    path: RouterLocation.createTask,
    parentNavigatorKey: routingKey,
    builder: CreateTaskPage.builder,
  ),
];
