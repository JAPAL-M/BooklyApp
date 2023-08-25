import 'package:bookly_app/features/home/presentation/viewModel/Feature_Books_Cubit/feature_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'CustomListViewItem.dart';

class FeaturesBooksListView extends StatelessWidget {
  const FeaturesBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBooksCubit, FeatureBooksState>(
  builder: (context, state) {
    if (state is FeatureBooksSuccess) {
      return SizedBox(
        height: MediaQuery.of(context).size.height * 0.32,
        child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => CustomListViewItem(bookModel: state.books[index],),
            separatorBuilder: (context, index) => const SizedBox(
              width: 15,
            ),
            itemCount: state.books.length),
      );
    }else if(state is FeatureBooksFailure){
      return Text(state.errormessage.toString());
    }else{
      return const CircularProgressIndicator();
    }
  },
);
  }
}