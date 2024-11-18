import 'package:bookly/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40,right:40,top: 50,bottom: 10),
      child: Row(
        children: [
          Image.asset(
            AppAssets.logo,
            height: 20,
          ),
          const Spacer(),
          IconButton(
              onPressed: () {
              },
              icon: const Icon(
                Icons.search,
                color: Colors.white,
                size: 22,
              ))
        ],
      ),
    );
  }
}
