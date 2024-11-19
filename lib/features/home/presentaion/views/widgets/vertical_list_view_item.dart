
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/model/v_book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/constant.dart';
import '../../../../book_details/presentation/views/book_details.dart';

class VerticalListViewItem extends StatelessWidget {
  const VerticalListViewItem({
    super.key,
    required this.vBookModel,
    required this.index,
  });

  final VBookModel vBookModel;
  final int index;
  @override
  Widget build(BuildContext context) {
    print(vBookModel.toString());
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
                  aspectRatio: 12 / 16,
                  child: CachedNetworkImage(
                    imageUrl: vBookModel.items[index].volumeInfo.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  color: Colors.transparent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                       Text(
                         vBookModel.items[index].volumeInfo.title! ,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            fontFamily: kGtSectraFine),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        textAlign: TextAlign.start,
                        vBookModel.items[index].volumeInfo.description!,
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.9), fontSize: 18),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .5,
                        child: Row(
                          children: [
                            Text(
                              '19.99 \$ ',
                              style: Styles.titleMedium.copyWith(
                                  fontSize: 18, fontWeight: FontWeight.w900),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const Spacer(),
                            const Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Text(
                              '4.8 ',
                              style: Styles.titleMedium.copyWith(fontSize: 18),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              '(2392)',
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.9),
                                  fontSize: 18),
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
