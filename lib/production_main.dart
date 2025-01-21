import 'package:doctoapp/core/di/dependency_injection.dart';
import 'package:doctoapp/core/routing/router.dart';
import 'package:doctoapp/doc_app.dart';
import 'package:doctoapp/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  checkTokenIfNull();
  await setupGetIt();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
