import 'package:doctoapp/core/di/dependency_injection.dart';
import 'package:doctoapp/core/routing/routes.dart';
import 'package:doctoapp/features/home/logic/cubit/home_cubit.dart';
import 'package:doctoapp/features/home/ui/screens/home_Screen.dart';
import 'package:doctoapp/features/login/logic/cubit/login_cubit.dart';
import 'package:doctoapp/features/login/ui/screens/login_screen.dart';
import 'package:doctoapp/features/onboarding/ui/screens/on_boarding_Screen.dart';
import 'package:doctoapp/features/register/logic/cubit/register_cubit.dart';
import 'package:doctoapp/features/register/ui/screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case AppRoutes.loginRoute:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      case AppRoutes.registerRoute:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt<RegisterCubit>(),
            child: const RegisterScreen(),
          ),
        );
      case AppRoutes.homeRoute:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
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
