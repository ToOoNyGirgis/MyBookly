import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(AppAssets.logo),
          const SizedBox(height: 16,),
          const Text('Read free books 📚',style: TextStyle(fontSize: 18),textAlign: TextAlign.center,)
        ],
      ),
    );
  }
}
