import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/BookModel/book_model.dart';
import 'package:bookly_app/features/home/presentation/view/Widgets/BestSellerPhotoBook.dart';
import 'package:bookly_app/features/home/presentation/view/Widgets/BookRaiting.dart';
import 'package:bookly_app/features/home/presentation/view/Widgets/CustomListViewItem.dart';
import 'package:bookly_app/features/home/presentation/viewModel/Feature_Books_Cubit/feature_books_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'BookDetailsAppBar.dart';
import 'BooksAction.dart';

class BookDetailsBodyView extends StatelessWidget {
  const BookDetailsBodyView({super.key, required this.bookModel, });
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.7, vertical: 40.2),
      child: Column(
        children: [
          const BookDetailsAppBar(),
          SizedBox(
              height: MediaQuery.of(context).size.height * .33,
              child: CustomListViewItem(bookModel: bookModel)),
          const SizedBox(
            height: 40,
          ),
           Text(
            bookModel.volumeInfo!.title.toString(),
            style: Styles.textStyle25,
             maxLines: 2,
             overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 4,
          ),
           Opacity(
              opacity: .7,
              child: Text(
                bookModel.volumeInfo!.authors!.first.toString(),
                style: Styles.textStyle18mud,
              )),
          const SizedBox(
            height: 14,
          ),
          const BookRaiting(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(
            height: 37,
          ),
           BooksAction(price: bookModel.saleInfo!.saleability.toString(), url: bookModel.volumeInfo!.previewLink.toString(),),
          const SizedBox(
            height: 40,
          ),
          const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'You can also like',
                style: Styles.textStyle14,
              )),
          const SizedBox(
            height: 16,
          ),
          Expanded(
              child: BlocBuilder<FeatureBooksCubit, FeatureBooksState>(
                builder: (context, state) {
                  if(state is FeatureBooksSuccess){
                    return ListView.separated(
                      itemBuilder: (context, index) => CustomListViewItem(bookModel: state.books[index],),
                      separatorBuilder: (context, index) => const SizedBox(
                        width: 10,
                      ),
                      itemCount: state.books.length,
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                    );
                  }else if(state is FeatureBooksFailure){
                    return Text(state.errormessage.toString(), textAlign: TextAlign.center,);
                  }else{
                    return const CircularProgressIndicator();
                  }
                },
              ))
        ],
      ),
    );
  }
}
