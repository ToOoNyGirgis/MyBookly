import 'package:bookly/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

import 'core/utils/constant.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
      theme: ThemeData().copyWith(
        scaffoldBackgroundColor: kPrimaryColor
      ),
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
