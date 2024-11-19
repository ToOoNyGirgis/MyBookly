import 'package:flutter/material.dart';

class BookCustomAppBar extends StatelessWidget {
  const BookCustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.close,
                color: Colors.white,
              )),
          const Spacer(),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart_outlined,
                color: Colors.white,
              )),
        ],
      ),
    );
  }
}
