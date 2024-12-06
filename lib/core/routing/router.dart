import 'package:doctoapp/core/routing/routes.dart';
import 'package:doctoapp/features/login/ui/screens/login_screen.dart';
import 'package:doctoapp/features/onboarding/ui/screens/on_boarding_Screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    
    switch (settings.name) {
      case AppRoutes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case AppRoutes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
