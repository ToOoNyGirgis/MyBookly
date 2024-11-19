
import 'package:bookly/features/book_details/data/models/book_details_model.dart';
import 'package:bookly/features/book_details/data/services/book_details_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final bookDetailsController = FutureProvider.family<BookDetailsModel,String>((ref,bookId) {

  final service= ref.watch(bookDetailsServiceProvider);
    return service.fetchData(bookId);
});