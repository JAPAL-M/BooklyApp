import 'package:bookly_app/features/search/presentation/view/widgets/SearchBodyView.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SearchBodyView(),
      ),
    );
  }
}
