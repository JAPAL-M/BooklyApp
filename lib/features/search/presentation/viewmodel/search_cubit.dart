import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/search/data/repo/search_repo.dart';
import 'package:equatable/equatable.dart';

import '../../../home/data/models/BookModel/book_model.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepo) : super(SearchInitial());

  final SearchRepo searchRepo;

  Future<void> fetchSearchBooks() async{
    emit(SearchLoading());
    var result = await searchRepo.fetchSearchBooks();

    result.fold((failure){
      emit(SearchFailure(failure.errMessage));
    }, (books){
      emit(SearchSuccess(books));
    });
  }
}
