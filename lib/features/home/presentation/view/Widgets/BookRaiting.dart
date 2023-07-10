import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../../../core/utils/styles.dart';

class BookRaiting extends StatelessWidget {
  const BookRaiting({
    super.key, this.mainAxisAlignment = MainAxisAlignment.start,
  });
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
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
        const Opacity(
          opacity: .5,
          child: Text(
            '(2390)',
            style: Styles.textStyle14,
          ),
        )
      ],
    );
  }
}
