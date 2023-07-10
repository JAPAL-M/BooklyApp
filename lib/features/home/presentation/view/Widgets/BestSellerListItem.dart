import 'package:bookly_app/features/details/presentaion/view/book_details_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'BestSellerInfoBook.dart';
import 'BestSellerPhotoBook.dart';

class BestSellerListItem extends StatelessWidget {
  const BestSellerListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => const BookDetailsView(),transition: Transition.cupertino),
      child: const Row(
        children: [
          BestSellerPhotoBook(),
          SizedBox(
            width: 30,
          ),
          BestSellerInfoBook()
        ],
      ),
    );
  }
}

