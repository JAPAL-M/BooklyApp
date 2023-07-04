import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../../../core/utils/styles.dart';

class BestSellerInfoBook extends StatelessWidget {
  const BestSellerInfoBook({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .6,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Harry Potter and the Goblet of Fire',
            style: Styles.textStyle20,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 2,
          ),
          const Text(
            'J.K. Rowling',
            style: Styles.textStyle14,
          ),
          const SizedBox(
            height: 2,
          ),
          Row(
            children: [
              const Text(
                '19.99 €',
                style: Styles.textStyle20b,
              ),
              const Spacer(),
              Icon(
                FontAwesomeIcons.solidStar,
                color: HexColor('#FFDD4F'),
                size: 15,
              ),
              const SizedBox(
                width: 6.3,
              ),
              const Text(
                '4.8',
                style: Styles.textStyle16,
              ),
              const SizedBox(
                width: 9,
              ),
              const Text(
                '(2390)',
                style: Styles.textStyle14,
              )
            ],
          )
        ],
      ),
    );
  }
}
