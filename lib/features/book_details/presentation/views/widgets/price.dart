import 'package:flutter/material.dart';

class Price extends StatelessWidget {
  const Price({
    super.key, required this.price,
  });

  final double? price;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 50,
          width: MediaQuery.of(context).size.width * 0.4,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(18),
                  bottomLeft: Radius.circular(18))),
          child: Center(
            child: Text(
              '${price??'not for sale'}',
              style: TextStyle(
                  color: Colors.black.withOpacity(0.9),
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        Container(
          height: 50,
          width: MediaQuery.of(context).size.width * 0.4,
          decoration: const BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(18),
                  bottomRight: Radius.circular(18))),
          child: Center(
            child: Text(
              'Free Review',
              style: TextStyle(
                  color: Colors.white.withOpacity(0.9),
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ],
    );
  }
}
