import 'dart:developer';

import 'package:bookly/features/book_details/presentation/controller/book_details_controller.dart';
import 'package:bookly/features/home/presentaion/controler/v_book_controler.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../home/presentaion/views/widgets/horizontal_list_view.dart';
import '../../../../home/presentaion/views/widgets/rating_widget.dart';
import 'book_cover_image.dart';
import 'book_custom_app_bar.dart';
import 'price.dart';

class BookDetailsViewBody extends ConsumerWidget {
  const BookDetailsViewBody({
    super.key,
    required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data1 = ref.watch(verticalProviderController('romantic'));
    return ref.watch(bookDetailsController(id)).when(
          data: (data) => SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const BookCustomAppBar(),
                BookCoverImage(
                  image: data.volumeInfo.imageLinks.thumbnail,
                ),
                const Text('book name',
                    style: Styles.titleMedium,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis),
                const Text('descreption',
                    style: Styles.description,
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis),
                const RatingWidget(),
                Price(
                  price: data.saleInfo?.amount,
                ),
                const SizedBox(height: 20),
                const Text('You can also like',
                    style: Styles.titleMedium, textAlign: TextAlign.start),
                data1.when(
                    data: (data) => Expanded(
                            child: HorizontalListView(
                          data: data,
                        )),
                  error: (error, stackTrace) {
                    log(error.toString(), stackTrace: stackTrace);
                    return Center(child: Text('error'));
                  },
                  loading: () => Center(child: CircularProgressIndicator()),),
              ],
            ),
          ),
          error: (error, stackTrace) {
            log(error.toString(), stackTrace: stackTrace);
            return const Text('error');
          },
          loading: () => Center(child: const CircularProgressIndicator()),
        );
  }
}
