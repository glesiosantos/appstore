import 'package:appstore/core/constants/app_theme.dart';
import 'package:appstore/features/auth/signin/sign_in_screen.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Store',
      theme: AppTheme.themeData,
      home: SignInScreen(),
      // initialRoute: ,
      // routes: ,
    );
  }
}
