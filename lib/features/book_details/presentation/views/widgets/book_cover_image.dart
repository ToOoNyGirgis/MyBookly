import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';


class BookCoverImage extends StatelessWidget {
  const BookCoverImage({
    super.key, required this.image,
  });
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(18),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.35,
          width: MediaQuery.of(context).size.width * 0.35,
          child:  CachedNetworkImage(imageUrl: image,fit: BoxFit.cover,),
        ),
      ),
    );
  }
}
