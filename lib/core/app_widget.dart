import 'package:appstore/features/base/screen/base_screen.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Store',
      home: BaseScreen(),
      // initialRoute: ,
      // routes: ,
    );
  }
}
