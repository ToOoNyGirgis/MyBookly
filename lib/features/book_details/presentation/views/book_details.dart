import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentaion/views/widgets/horizontal_list_view.dart';
import 'package:bookly/features/home/presentaion/views/widgets/rating_widget.dart';
import 'package:flutter/material.dart';
import 'widgets/book_cover_image.dart';
import 'widgets/book_custom_app_bar.dart';
import 'widgets/price.dart';

class BookDetailsScreen extends StatelessWidget {
  const BookDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            BookCustomAppBar(),
            BookCoverImage(),
            Text('book name',
                style: Styles.titleMedium, textAlign: TextAlign.center),
            Text('descreption',
                style: Styles.description, textAlign: TextAlign.center),
            Center(child: RatingWidget()),
            Price(),
            SizedBox(height: 20),
            Text('You can also like',
                style: Styles.titleMedium, textAlign: TextAlign.start),
           Expanded(child: HorizontalListView()),
          ],
        ),
      ),
    );
  }
}



