import 'package:bookly_app/features/home/presentation/viewModel/Newest_Books_Cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'SearchListItem.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => SearchListItem(bookModel: state.books[index],),
              separatorBuilder: (context, index) => const SizedBox(
                    height: 20,
                  ),
              itemCount: state.books.length);
        } else if (state is NewestBooksFailure) {
          return Text(state.errormessage.toString());
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
