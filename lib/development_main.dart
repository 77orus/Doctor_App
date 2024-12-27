import 'package:doctoapp/core/di/dependency_injection.dart';
import 'package:doctoapp/core/routing/router.dart';
import 'package:doctoapp/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  await setupGetIt();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
