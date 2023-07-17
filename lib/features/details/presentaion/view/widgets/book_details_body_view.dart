import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/view/Widgets/BestSellerPhotoBook.dart';
import 'package:bookly_app/features/home/presentation/view/Widgets/BookRaiting.dart';
import 'package:bookly_app/features/home/presentation/view/Widgets/CustomListViewItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'BookDetailsAppBar.dart';
import 'BooksAction.dart';

class BookDetailsBodyView extends StatelessWidget {
  const BookDetailsBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.7, vertical: 40.2),
      child: Column(
        children: [
          const BookDetailsAppBar(),
          SizedBox(
              height: MediaQuery.of(context).size.height * .33,
              child: const CustomListViewItem()),
          const SizedBox(
            height: 40,
          ),
          const Text(
            'The Jungle Book',
            style: Styles.textStyle25,
          ),
          const SizedBox(
            height: 4,
          ),
          const Opacity(
              opacity: .7,
              child: Text(
                'Rudyard Kipling',
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
          const BooksAction(),
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
              child: ListView.separated(
            itemBuilder: (context, index) => const BestSellerPhotoBook(),
            separatorBuilder: (context, index) => const SizedBox(
              width: 10,
            ),
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
          ))
        ],
      ),
    );
  }
}
