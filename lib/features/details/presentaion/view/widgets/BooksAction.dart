import 'package:bookly_app/core/utils/url_launcher.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/CustomButton.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.price, required this.url});
final String price;
final String url;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          CustomButton(
            onPressed: (){},
            text: price == 'NOT_FOR_SALE' ? 'Free' : price,
            backgroundColor: Colors.white,
            textColor: Colors.black,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(14), bottomLeft: Radius.circular(14)),
          ),
          CustomButton(
            onPressed: (){
              launchCustomUr(context, url);
            },
            text: 'Free preview',
            backgroundColor: const Color(0xffEF8262),
            textColor: Colors.white,
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(14), bottomRight: Radius.circular(14)),
          ),
        ],
      ),
    );
  }
}