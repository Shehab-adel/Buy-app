import 'dart:async';

import 'package:buy/presentation/resources/app_assets.dart';
import 'package:buy/presentation/resources/app_constants.dart';
import 'package:buy/presentation/resources/color_manager.dart';
import 'package:buy/presentation/resources/routes.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Timer? _timer;

  _startDelay() {
    _timer =
        Timer(const Duration(seconds: AppConstants.splashDelay), _getRouteNext);
  }

  _getRouteNext() {
    Navigator.pushReplacementNamed(context, AppRoutes.onBoardingRoute);
  }

  @override
  void initState() {
    _startDelay();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: const Center(child: Image(image: AssetImage(AppAssets.splashLogo))),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
