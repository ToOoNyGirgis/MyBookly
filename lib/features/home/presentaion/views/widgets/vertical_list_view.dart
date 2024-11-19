import 'package:bookly/features/home/presentaion/views/widgets/vertical_list_view_item.dart';
import 'package:flutter/material.dart';

class VerticalListView extends StatelessWidget {
  const VerticalListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 5,
        itemBuilder: (context, index) =>
        const VerticalListViewItem(),
      ),
    );
  }
}
