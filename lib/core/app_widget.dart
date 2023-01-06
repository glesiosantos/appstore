import 'package:appstore/core/app_provider.dart';
import 'package:appstore/core/constants/app_routes.dart';
import 'package:appstore/core/constants/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: AppProvider.providers,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'App Store',
        theme: AppTheme.themeData,
        initialRoute: AppRoutes.signInRoute,
        routes: AppRoutes.routes,
      ),
    );
  }
}
