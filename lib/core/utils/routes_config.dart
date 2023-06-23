import 'package:ecommerce_bloc/core/constants/route_constants.dart';
import 'package:ecommerce_bloc/ui/screens/auth/signup/signup_screen.dart';
import 'package:ecommerce_bloc/ui/screens/splash.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.splash:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
      case RouteName.signup:
        return MaterialPageRoute(
          builder: (context) => const SignupScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Center(child: Text("Error")),
          ),
        );
    }
  }
}
