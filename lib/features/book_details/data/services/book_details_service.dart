
import 'package:bookly/features/book_details/data/models/book_details_model.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final dioProvider = Provider((ref) => Dio());

final bookDetailsServiceProvider= Provider((ref) {

  final dio = ref.watch(dioProvider) ;
  return BookDetailsService(dio);
});

class BookDetailsService{
  final Dio dio;

  BookDetailsService(this.dio);

  Future<BookDetailsModel> fetchData(String volumeId) async {

    const String baseUrl ='https://www.googleapis.com/books/v1/';
    final response = await dio.get('${baseUrl}volumes/$volumeId');
    if (response.statusCode == 200) {
      return BookDetailsModel.fromJson(response.data);
    } else {
      throw Exception('Failed to fetch books');
    }

  }

}