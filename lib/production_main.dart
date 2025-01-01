import 'package:doctoapp/core/di/dependency_injection.dart';
import 'package:doctoapp/core/routing/router.dart';
import 'package:doctoapp/doc_app.dart';
import 'package:flutter/material.dart';

void main() async {
  await setupGetIt();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
