import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../home/presentaion/views/widgets/horizontal_list_view.dart';
import '../../../../home/presentaion/views/widgets/rating_widget.dart';
import 'book_cover_image.dart';
import 'book_custom_app_bar.dart';
import 'price.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          BookCustomAppBar(),
          BookCoverImage(),
          Text('book name',
              style: Styles.titleMedium, textAlign: TextAlign.center,maxLines: 2,overflow: TextOverflow.ellipsis),
          Text('descreption',
              style: Styles.description, textAlign: TextAlign.center,maxLines:1,overflow: TextOverflow.ellipsis),
          RatingWidget(),
          Price(),
          SizedBox(height: 20),
          Text('You can also like',
              style: Styles.titleMedium, textAlign: TextAlign.start),
          Expanded(child: HorizontalListView()),
        ],
      ),
    );
  }
}
