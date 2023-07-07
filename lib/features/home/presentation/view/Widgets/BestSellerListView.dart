import 'package:flutter/material.dart';

import 'BestSellerListItem.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => const BestSellerListItem(),
        separatorBuilder: (context, index) => const SizedBox(
          height: 20,
        ),
        itemCount: 20);
  }
}