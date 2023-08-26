import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/search/presentation/view/widgets/SearchListItem.dart';
import 'package:bookly_app/features/search/presentation/viewmodel/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../home/presentation/view/Widgets/BestSellerListItem.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchSuccess) {
          return ListView.separated(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => SingleChildScrollView(child: SearchListItem(bookModel: state.books[index],)),
              separatorBuilder: (context, index) => const SizedBox(
                height: 20,
              ),
              itemCount: state.books.length);
        } else if (state is SearchFailure) {
          return Text(state.error.toString());
        } else {
          return const Center(child: Text('Search Now!',style: Styles.textStyle20,));
        }
      },
    );
  }
}