import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: AspectRatio(
        aspectRatio: 3.8 / 5,
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.red,
              image:
              const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AssetsData.testImage)
              )
          ),
        ),
      ),
    );
  }
}