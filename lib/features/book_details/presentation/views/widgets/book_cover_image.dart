import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class BookCoverImage extends StatelessWidget {
  const BookCoverImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Image(
        height: MediaQuery.of(context).size.height * 0.35,
        image: const AssetImage(
          AppAssets.testImage,
        ),
      ),
    );
  }
}
