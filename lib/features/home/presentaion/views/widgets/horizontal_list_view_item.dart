import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/features/book_details/presentation/views/book_details.dart';
import 'package:bookly/features/home/data/model/v_book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';


class HorizontalListViewItem extends StatelessWidget {
  const HorizontalListViewItem({
    super.key, required this.bookModel, required this.index,
  });

  final VBookModel bookModel;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => BookDetailsView(id: bookModel.items[index].id,),
          ));
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: AspectRatio(
            aspectRatio: 9 / 16,
            child: CachedNetworkImage(imageUrl: bookModel.items[index].volumeInfo.image??AppAssets.testNetworkImage,fit: BoxFit.cover,),
          ),
        ),
      ),
    );
  }
}
