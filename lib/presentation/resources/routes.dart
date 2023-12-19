import 'package:buy/presentation/forget_password/forgetPassword_view.dart';
import 'package:buy/presentation/login/login_view.dart';
import 'package:buy/presentation/main/main_view.dart';
import 'package:buy/presentation/onboarding/onboarding_view.dart';
import 'package:buy/presentation/register/register_view.dart';
import 'package:buy/presentation/resources/app_string.dart';
import 'package:buy/presentation/splash/splash_view.dart';
import 'package:buy/presentation/storeDetails/storeDetails_view.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String splashRoute = '/';
  static const String onBoardingRoute = '/onBoarding';
  static const String loginRoute = '/login';
  static const String registerRoute = '/register';
  static const String forgetPasswordRoute = '/forgetPassword';
  static const String mainRoute = '/main';
  static const String storeDetailsRoute = '/storeDetails';
}

class AppRouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case AppRoutes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => const OnBoardingView());
      case AppRoutes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case AppRoutes.registerRoute:
        return MaterialPageRoute(builder: (_) => const RegisterView());
      case AppRoutes.forgetPasswordRoute:
        return MaterialPageRoute(builder: (_) => const ForgetPasswordView());
      case AppRoutes.mainRoute:
        return MaterialPageRoute(builder: (_) => const MainView());
      case AppRoutes.storeDetailsRoute:
        return MaterialPageRoute(builder: (_) => const StoreDetailsView());
      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(title: const Text(AppString.noRouteFound)),
              body: const Center(child: Text(AppString.noRouteFound)),
            ));
  }
}
