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
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.35,
        child: const AspectRatio(
          aspectRatio: 9/16,
          child: Image(
            image: AssetImage(
              AppAssets.testImage,
            ),
          ),
        ),
      ),
    );
  }
}
