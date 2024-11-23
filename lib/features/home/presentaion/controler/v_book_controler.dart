
import 'package:bookly/features/home/data/model/v_book_model.dart';
import 'package:bookly/features/home/data/services/v_book_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final verticalProviderController = FutureProvider.family<VBookModel,String?>((ref , category) {
  final service = ref.watch(vBookProvider);
  return service.getBooks(category);

},);

final verticalStateProvider = StateProvider<String>((ref) => 'Programming');
final horizontalStateProvider = StateProvider<String>((ref) => 'doctor');