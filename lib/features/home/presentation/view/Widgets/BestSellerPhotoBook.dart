import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class BestSellerPhotoBook extends StatelessWidget {
  const BestSellerPhotoBook({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: AspectRatio(
        aspectRatio: 3.3 / 5,
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.red,
              image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AssetsData.testImage))),
        ),
      ),
    );
  }
}