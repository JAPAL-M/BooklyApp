import 'package:flutter/material.dart';

import 'CustomListViewItem.dart';

class FeaturesBooksListView extends StatelessWidget {
  const FeaturesBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.32,
      child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => const CustomListViewItem(),
          separatorBuilder: (context, index) => const SizedBox(
            width: 20,
          ),
          itemCount: 10),
    );
  }
}