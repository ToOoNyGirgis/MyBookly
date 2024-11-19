import 'package:bookly/features/home/presentaion/views/widgets/vertical_list_view_item.dart';
import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'horizontal_list_view_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsetsDirectional.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.zero,
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) =>
                    const HorizontalListViewItem(),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Best Sellers',
            style: TextStyle(
                 fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: 5,
              itemBuilder: (context, index) =>
                  const VerticalListViewItem(),
            ),
          ),
        ],
      ),
    ));
  }
}


