import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../screens/book_details.dart';

class HorizontalListViewItem extends StatelessWidget {
  const HorizontalListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const BookDetailsScreen(),
        ));
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: AspectRatio(
          aspectRatio: 2.6 / 4,
          child: Image.asset(AppAssets.testImage),
        ),
      ),
    );
  }
}
