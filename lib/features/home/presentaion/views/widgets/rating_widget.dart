import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.star,color: Colors.yellow,),
        Text(
          '4.8 ',
          style: Styles.titleMedium.copyWith(fontSize: 18),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          '(2392)',
          style: TextStyle(color: Colors.white.withOpacity(0.9),fontSize: 18),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
