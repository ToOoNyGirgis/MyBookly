
import 'package:bookly/features/home/data/model/v_book_model.dart';
import 'package:flutter/material.dart';
import 'horizontal_list_view_item.dart';

class HorizontalListView extends StatelessWidget {
  const HorizontalListView({
    super.key, required this.data,
  });
  final VBookModel data;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemCount: data.items.length,
        itemBuilder: (context, index) =>
            HorizontalListViewItem(bookModel: data,index: index,),
      ),
    );
  }
}

