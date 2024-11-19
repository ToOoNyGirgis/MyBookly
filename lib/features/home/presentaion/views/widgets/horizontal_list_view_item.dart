import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../book_details/presentation/views/book_details.dart';

class HorizontalListViewItem extends StatelessWidget {
  const HorizontalListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const BookDetailsView(),
          ));
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: AspectRatio(
            aspectRatio: 9 / 16,
            child: Image.asset(AppAssets.testImage,fit: BoxFit.cover,),
          ),
        ),
      ),
    );
  }
}
