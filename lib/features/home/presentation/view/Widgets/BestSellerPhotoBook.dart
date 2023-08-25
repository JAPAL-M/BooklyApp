import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class BestSellerPhotoBook extends StatelessWidget {
  const BestSellerPhotoBook({
    super.key, required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(6),
      child: SizedBox(
        height: MediaQuery
            .of(context)
            .size
            .height * .15,
        child: AspectRatio(
          aspectRatio: 3.3 / 5,
          child: CachedNetworkImage(
            imageUrl: image,
            fit: BoxFit.fill,
            placeholder: (context, loading) => const CircularProgressIndicator(),
            errorWidget: (context, error, until) => const Icon(Icons.error),),
        ),
      ),
    );
  }
}