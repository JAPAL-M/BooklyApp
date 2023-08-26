import 'package:bookly_app/features/details/presentaion/view/book_details_view.dart';
import 'package:bookly_app/features/home/data/models/BookModel/book_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'SearchInfoBook.dart';
import 'SearchPhotoBook.dart';

class SearchListItem extends StatelessWidget {
  const SearchListItem({
    super.key, required this.bookModel,
  });
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => BookDetailsView(bookModel: bookModel,),transition: Transition.cupertino),
      child: Row(
        children: [
          SearchPhotoBook(image: bookModel.volumeInfo!.imageLinks!.thumbnail.toString(),),
         const SizedBox(
            width: 30,
          ),
          SearchInfoBook(bookModel: bookModel,)
        ],
      ),
    );
  }
}

