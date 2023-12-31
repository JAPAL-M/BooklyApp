import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'BestSellerListView.dart';
import 'CustomAppBar.dart';
import 'FeaturesBooksListView.dart';

class HomeBodyView extends StatelessWidget {
  const HomeBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomAppBar(),
                  FeaturesBooksListView(),
                  SizedBox(
                    height: 49,
                  ),
                  Text(
                    'Best Seller',
                    style: Styles.textStyle18,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: BestSellerListView(),
            )
          ],
        ),
      ),
    );
  }
}


