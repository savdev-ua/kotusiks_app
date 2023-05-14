import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:kotusiks_app/core/constants/app_colors.dart';

import '../../core/constants/texts.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
          primaryColor: AppColors.primaryAppColor,
          appBarTheme: const AppBarTheme(color: AppColors.primaryAppColor),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: TextButton.styleFrom(
            backgroundColor: AppColors.primaryAppColor,
            disabledBackgroundColor: AppColors.primaryAppColor,
          ))),
      debugShowCheckedModeBanner: false,
      title: Titles.appTitle,
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }
}
