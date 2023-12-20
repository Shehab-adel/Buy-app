import 'package:buy/presentation/resources/routes.dart';
import 'package:buy/presentation/resources/theme_manager.dart';
import 'package:flutter/material.dart';

class BuyApp extends StatefulWidget {
  const BuyApp._internal();

  static const _instance = BuyApp._internal();

  factory BuyApp() => _instance;

  @override
  State<BuyApp> createState() => _BuyAppState();
}

class _BuyAppState extends State<BuyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouteGenerator.getRoute,
      initialRoute: AppRoutes.splashRoute,
      theme: getAppTheme(),
    );
  }
}
