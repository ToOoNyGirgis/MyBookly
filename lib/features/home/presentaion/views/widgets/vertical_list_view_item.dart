import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../book_details/presentation/views/book_details.dart';

class VerticalListViewItem extends StatelessWidget {
  const VerticalListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .2,
      child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const BookDetailsView(),
            ));
          },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: AspectRatio(
                  aspectRatio: 9 / 16,
                  child: Image.asset(AppAssets.testImage),
                ),
              ),
              Expanded(
                child: Card(
                  color: Colors.transparent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        'book name book name book name book name book name ',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        textAlign: TextAlign.start,
                        'book description book description book description book description ',
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.9),
                            fontSize: 18),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .5,
                        child: Row(
                          children: [
                            Text(
                              '19.99 \$ ',
                              style: Styles.titleMedium.copyWith(fontSize: 18,fontWeight: FontWeight.w900),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const Spacer(),
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
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
