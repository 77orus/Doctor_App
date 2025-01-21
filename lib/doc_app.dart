import 'package:doctoapp/core/helpers/extensions.dart';
import 'package:doctoapp/core/helpers/shared_pref_keys.dart';
import 'package:doctoapp/core/helpers/shared_pref_helper.dart';
import 'package:doctoapp/core/routing/router.dart';
import 'package:doctoapp/features/home/ui/screens/home_Screen.dart';
import 'package:doctoapp/features/login/ui/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRouter;
  const DocApp({
    super.key,
    required this.appRouter,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
        ),
        home: isLoggedIn ? const HomeScreen() : const LoginScreen(),
        onGenerateRoute: appRouter.onGenerateRoute,
      ),
    );
  }
}

checkTokenIfNull() async {
  String? token = await SharedPrefHelper.getString(SharedPrefKeys.tokenKey);
  if (token.isEmptyOrNull()) {
    isLoggedIn = false;
  }
  {
    isLoggedIn = true;
  }
}
