import 'package:flutter/material.dart';
import 'BestSellerInfoBook.dart';
import 'BestSellerPhotoBook.dart';

class BestSellerListItem extends StatelessWidget {
  const BestSellerListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        BestSellerPhotoBook(),
        SizedBox(
          width: 30,
        ),
        BestSellerInfoBook()
      ],
    );
  }
}

