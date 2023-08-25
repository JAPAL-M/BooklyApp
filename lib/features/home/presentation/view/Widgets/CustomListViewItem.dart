import 'package:bookly_app/features/details/presentaion/view/book_details_view.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../core/utils/assets.dart';
import '../../../data/models/BookModel/book_model.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({
    super.key, required this.bookModel,
  });
 final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.to(BookDetailsView(bookModel: bookModel));
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: AspectRatio(
            aspectRatio: 4.4 / 6.5,
            child: CachedNetworkImage(
              imageUrl: bookModel.volumeInfo!.imageLinks!.thumbnail.toString(),
              fit: BoxFit.fill,
              placeholder: (context, loading) => const CircularProgressIndicator(),
              errorWidget: (context, error, until) => const Icon(Icons.error),),
          ),
        ),
      ),
    );
  }
}