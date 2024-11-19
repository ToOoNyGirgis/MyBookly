import 'package:bookly/temp/data/model/books_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../temp/data/service/book_service.dart';

final horizontalListFutureProvider = FutureProvider<BookModel>((ref) {
  final service = ref.watch(bookServiceProvider);
  return service.fetchBooks();
});