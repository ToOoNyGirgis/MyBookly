import 'dart:developer';

import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentaion/controler/v_book_controler.dart';
import 'package:bookly/features/home/presentaion/views/widgets/vertical_list_view.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'custom_app_bar.dart';
import 'horizontal_list_view.dart';

class HomeViewBody extends ConsumerWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context, ref) {
    final data1 = ref.watch(verticalProviderController('programming'));
    final data2 = ref.watch(verticalProviderController('doctor'));
    return Scaffold(
        body: Padding(
      padding: const EdgeInsetsDirectional.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          data2.when(
            data: (data) => HorizontalListView(data: data,),
            error: (error, stackTrace) {
              log(error.toString(), stackTrace: stackTrace);
              return Center(child: Text('error'));
            },
            loading: () => Center(child: CircularProgressIndicator()),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Best Sellers',
            style: Styles.titleMedium,
          ),
          data1.when(
            data: (data) => VerticalListView(
              data: data,
            ),
            error: (error, stackTrace) {
              log(error.toString(), stackTrace: stackTrace);
              return Center(child: Text('error'));
            },
            loading: () => Center(child: CircularProgressIndicator()),
          ),
        ],
      ),
    ));
  }
}
