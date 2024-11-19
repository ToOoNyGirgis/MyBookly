import 'package:bookly/features/book_details/presentation/views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key, required this.id});
  final String id;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: BookDetailsViewBody(id: id,),
    );
  }
}




