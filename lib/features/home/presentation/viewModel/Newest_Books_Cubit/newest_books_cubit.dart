import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/BookModel/book_model.dart';
import 'package:bookly_app/features/home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchNewestBooks() async{
    emit(NewestBooksLoading());
    var result = await homeRepo.fetchNewestBooks();

    result.fold((failure){
      emit(NewestBooksFailure(failure.errMessage));
    }, (books){
      emit(NewestBooksSuccess(books));
    });
  }
}
