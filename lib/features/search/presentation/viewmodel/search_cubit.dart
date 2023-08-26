import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/search/data/repo/search_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../home/data/models/BookModel/book_model.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepo) : super(SearchInitial());
  static SearchCubit get(BuildContext context) => BlocProvider.of(context);

  final SearchRepo searchRepo;

  Future<void> fetchSearchBooks({required String? search}) async{
    emit(SearchLoading());
    var result = await searchRepo.fetchSearchBooks(search: search);

    result.fold((failure){
      emit(SearchFailure(failure.errMessage));
    }, (books){
      emit(SearchSuccess(books));
    });
  }
  TextEditingController searchController = TextEditingController();
}
