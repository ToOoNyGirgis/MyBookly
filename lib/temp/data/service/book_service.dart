import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../model/books_model.dart';

final dioProvider = Provider<Dio>((ref) => Dio());

final bookServiceProvider = Provider<BookService>((ref)
{
  final dio = ref.watch(dioProvider);
  return BookService(dio);
});


class BookService {
  final Dio dio;

  BookService(this.dio);
  final String baseUrl ='https://www.googleapis.com/books/v1/';
  Future<BookModel> fetchBooks() async {
    final response = await dio.get('${baseUrl}volumes?q=programming');
    if (response.statusCode == 200) {
      return BookModel.fromJson(response.data);
    } else {
      throw Exception('Failed to fetch books');
    }
  }
}