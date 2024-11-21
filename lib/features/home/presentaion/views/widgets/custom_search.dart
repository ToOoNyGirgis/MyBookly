import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomSearch extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Text('clear')),

    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back_ios_new));
  }

  @override
  Widget buildResults(BuildContext context) {
    if (query == '') {
      return const Center(
          child: Text(
        'You need to type in the search field 🙃',
        textAlign: TextAlign.center,
        style: Styles.titleMedium,
      ));
    } else {
      return ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            showResults(context);
          },
          child: Card(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Text(
                'suggest[index]',
                style: Styles.titleMedium.copyWith(fontSize: 20),
              ),
            ),
          ),
        ),
      );
    }
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggest = [
      'programming',
      'engineering',
      'study',
      'doctor',
      'action',
      'story',
      'romantic',
    ];
    List<String>? filter = [];
    if (query != '') {
      filter = suggest.where((element) => element.contains(query)).toList();
      return ListView.builder(
        itemCount: filter.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            query = filter![index];
            showResults(context);
          },
          child: Card(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Text(
                filter![index],
                style: Styles.titleMedium.copyWith(fontSize: 20),
              ),
            ),
          ),
        ),
      );
    } else {
      return ListView.builder(
        itemCount: suggest.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            query = suggest[index];
            showResults(context);
          },
          child: Card(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Text(
                suggest[index],
                style: Styles.titleMedium.copyWith(fontSize: 20),
              ),
            ),
          ),
        ),
      );
    }
  }
}
