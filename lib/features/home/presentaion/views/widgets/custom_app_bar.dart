import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(left: 16,right:16,top: 40,bottom: 10),
      child: Row(
        children: [
          Image.asset(
            AppAssets.logo,
            height: 20,
          ),
          Expanded(child: TextFormField(

          ))
        ],
      ),
    );
  }
}

