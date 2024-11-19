
import 'package:bookly/features/home/data/model/v_book_model.dart';
import 'package:bookly/features/home/data/services/v_book_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final verticalProvider = FutureProvider<VBookModel>((ref) {
  final service = ref.watch(vBookProvider);
  return service.getBooks();

},);