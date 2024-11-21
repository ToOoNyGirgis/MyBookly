
import 'package:bookly/features/home/data/model/v_book_model.dart';
import 'package:bookly/features/home/presentaion/views/widgets/vertical_list_view_item.dart';
import 'package:flutter/material.dart';

class VerticalListView extends StatelessWidget {
  const VerticalListView({
    super.key, required this.data,
  });
  final VBookModel data;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: data.items.length,
        itemBuilder: (context, index) =>
            VerticalListViewItem(
              index: index,
              vBookModel: data,
            ),
      ),
    );
  }
}
