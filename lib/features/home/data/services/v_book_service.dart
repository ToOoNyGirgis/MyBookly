

import 'package:bookly/features/home/data/model/v_book_model.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final dioProvider = Provider((ref) => Dio());

final vBookProvider = Provider((ref) {
  final dio = ref.watch(dioProvider);
  return VBookService(dio);
});

class VBookService{
     final Dio dio;

  VBookService(this.dio);

  Future<VBookModel> getBooks(String? category) async {

    const String baseUrl ='https://www.googleapis.com/books/v1/';
    final response = await dio.get('${baseUrl}volumes?q=${category??'programming'}');
    if (response.statusCode == 200) {
      return VBookModel.fromJson(response.data);
    } else {
      throw Exception('Failed to fetch books');
    }

  }

}