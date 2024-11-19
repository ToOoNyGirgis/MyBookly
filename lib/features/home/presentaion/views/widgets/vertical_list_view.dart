import 'dart:developer';

import 'package:bookly/features/home/presentaion/controler/v_book_controler.dart';
import 'package:bookly/features/home/presentaion/views/widgets/vertical_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VerticalListView extends ConsumerWidget {
  const VerticalListView({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(verticalProvider).when(
          data:(data) => Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: data.items.length,
              itemBuilder: (context, index) =>
               VerticalListViewItem(
                index: index,
                vBookModel: data,
              ),
            ),
          ),
          error: (error, stackTrace) {
            log(error.toString(),stackTrace: stackTrace,);
            return const Text('error');
          },
          loading: () => const CircularProgressIndicator(),
        );
  }
}
