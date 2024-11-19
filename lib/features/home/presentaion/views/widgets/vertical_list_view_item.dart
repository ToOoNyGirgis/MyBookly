import 'package:bookly/features/home/presentaion/views/widgets/rating_widget.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class VerticalListViewItem extends StatelessWidget {
  const VerticalListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .2,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: AspectRatio(
              aspectRatio: 2.6 / 4,
              child: Image.asset(AppAssets.testImage),
            ),
          ),
          Card(
            color: Colors.transparent,
            child: Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: const Text(
                    'book namebook namebook namebook namebook name',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text(
                    'book ',
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.9),
                        fontSize: 18),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Row(
                    children: [
                      Text(
                        '19.99 \$ ',
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.9),
                            fontSize: 18),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const Spacer(),
                      const RatingWidget(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
