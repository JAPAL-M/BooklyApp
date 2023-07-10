import 'package:flutter/material.dart';


import '../../../../../core/utils/styles.dart';
import 'BookRaiting.dart';

class BestSellerInfoBook extends StatelessWidget {
  const BestSellerInfoBook({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .6,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text(
            'Harry Potter and the Goblet of Fire',
            style: Styles.textStyle20,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
           SizedBox(
            height: 2,
          ),
           Text(
            'J.K. Rowling',
            style: Styles.textStyle14,
          ),
           SizedBox(
            height: 2,
          ),
          Row(
            children: [
               Text(
                '19.99 €',
                style: Styles.textStyle20b,
              ),
               Spacer(),
              BookRaiting()
            ],
          )
        ],
      ),
    );
  }
}