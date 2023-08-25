import 'package:bookly_app/features/details/presentaion/view/widgets/book_details_body_view.dart';
import 'package:bookly_app/features/home/data/models/BookModel/book_model.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key, required this.bookModel, });
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BookDetailsBodyView(bookModel: bookModel,),
    );
  }
}
