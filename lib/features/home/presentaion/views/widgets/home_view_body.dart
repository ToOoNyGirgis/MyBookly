import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentaion/views/widgets/vertical_list_view.dart';
import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'horizontal_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Padding(
      padding: EdgeInsetsDirectional.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          HorizontalListView(),
          SizedBox(
            height: 20,
          ),
          Text(
            'Best Sellers',
            style:Styles.titleMedium,
          ),
          VerticalListView(),
        ],
      ),
    ));
  }
}




