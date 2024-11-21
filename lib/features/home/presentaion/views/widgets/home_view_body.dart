import 'dart:developer';

import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentaion/controler/v_book_controler.dart';
import 'package:bookly/features/home/presentaion/views/widgets/vertical_list_view.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'horizontal_list_view.dart';

class HomeViewBody extends ConsumerWidget {
  HomeViewBody({
    super.key,
  });

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, ref) {
    String category=ref.watch(verticalStateProvider);
    final TextEditingController searchController = TextEditingController();
    final data1 = ref.watch(verticalProviderController(category));
    final data2 = ref.watch(verticalProviderController('doctor'));
    return Form(
      key: _formKey,
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsetsDirectional.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 16, right: 16, top: 40, bottom: 10),
              child: Row(
                children: [
                  Image.asset(
                    AppAssets.logo,
                    height: 20,
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      onFieldSubmitted: (value) {
                        if (_formKey.currentState!.validate()) {
                          ref.read(verticalStateProvider.notifier).state=value;
                        }
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'enter something in search';
                        }
                        return null;
                      },
                      controller: searchController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                        labelText: 'search',
                      ),
                    ),
                  ))
                ],
              ),
            ),
            const Visibility(
              visible: true,
              child: SizedBox(
                height: 16,
              ),
            ),
            data2.when(
              data: (data) => Visibility(
                  visible: true,
                  child: HorizontalListView(
                    data: data,
                  )),
              error: (error, stackTrace) {
                log(error.toString(), stackTrace: stackTrace);
                return const Center(child: Text('error'));
              },
              loading: () => const Center(child: CircularProgressIndicator()),
            ),
            const Visibility(
              visible: true,
              child: SizedBox(
                height: 20,
              ),
            ),
            const Visibility(
              visible: true,
              child: Text(
                'Best Sellers',
                style: Styles.titleMedium,
              ),
            ),
            data1.when(
              data: (data) => VerticalListView(
                data: data,
              ),
              error: (error, stackTrace) {
                log(error.toString(), stackTrace: stackTrace);
                return const Center(child: Text('error'));
              },
              loading: () => const Center(child: CircularProgressIndicator()),
            ),
          ],
        ),
      )),
    );
  }
}
