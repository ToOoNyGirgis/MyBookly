import 'package:bookly/features/home/presentaion/views/widgets/custom_search.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

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
          const Spacer(),
          IconButton(
              onPressed: () => showSearch(context: context, delegate: CustomSearch())
              ,
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

