import 'package:flutter/material.dart';

import 'horizontal_list_view_item.dart';

class HorizontalListView extends StatelessWidget {
  const HorizontalListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) =>
        const HorizontalListViewItem(),
      ),
    );
  }
}
