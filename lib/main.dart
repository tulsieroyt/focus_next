import 'package:flutter/material.dart';
import 'package:focus_next/navigation_menu.dart';
import 'package:focus_next/src/bindings/general_bindings.dart';
import 'package:focus_next/src/utils/theme/theme.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: GeneralBindings(),
      home: const NavigationMenu(),
      theme: AppTheme.lightTheme,
    );
  }
}
