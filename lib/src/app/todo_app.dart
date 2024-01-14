import 'package:flutter/material.dart';
import 'package:todoapp/src/config/config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todoapp/src/providers/routes_provider.dart';

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final routerConfig = ref.watch(routesProvider);
    return MaterialApp.router(
      theme: AppTheme.light,
      debugShowCheckedModeBanner: false,
      routerConfig: routerConfig,
    );
  }
}
