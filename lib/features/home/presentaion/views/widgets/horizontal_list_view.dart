import 'dart:developer';

import 'package:bookly/features/home/presentaion/controler/horizontal_list_view_controler.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'horizontal_list_view_item.dart';

class HorizontalListView extends ConsumerWidget {
  const HorizontalListView({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(horizontalListFutureProvider).when(
          data: (data) =>SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              itemCount: data.items.length,
              itemBuilder: (context, index) =>
               HorizontalListViewItem(bookModel: data.items[index],),
            ),
          ),
          error: (error, stackTrace) {
            log(error.toString(),stackTrace:stackTrace);
            return const Text('error');
          },
          loading: () => const CircularProgressIndicator(),
        );
  }
}

