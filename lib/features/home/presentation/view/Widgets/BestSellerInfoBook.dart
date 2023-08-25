import 'package:bookly_app/features/home/data/models/BookModel/book_model.dart';
import 'package:flutter/material.dart';


import '../../../../../core/utils/styles.dart';
import 'BookRaiting.dart';

class BestSellerInfoBook extends StatelessWidget {
  const BestSellerInfoBook({
    super.key, required this.bookModel,
  });
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .6,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text(
            bookModel.volumeInfo!.title.toString(),
            style: Styles.textStyle20,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 2,
          ),
           Text(
             bookModel.volumeInfo!.authors!.first.toString(),
            style: Styles.textStyle14,
          ),
         const  SizedBox(
            height: 2,
          ),
          Row(
            children: [
               Text(
                 bookModel.saleInfo!.saleability.toString() == 'NOT_FOR_SALE' ? 'Free' :  bookModel.saleInfo!.saleability.toString(),
                style: Styles.textStyle20b,
                 maxLines: 2,
                 overflow: TextOverflow.ellipsis,
              ),
              const Spacer(),
             const BookRaiting()
            ],
          )
        ],
      ),
    );
  }
}