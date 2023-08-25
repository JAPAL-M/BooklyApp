import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/BookModel/book_model.dart';
import 'package:bookly_app/features/home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'feature_books_state.dart';

class FeatureBooksCubit extends Cubit<FeatureBooksState> {
  FeatureBooksCubit(this.homeRepo) : super(FeatureBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeatureBooks() async{
    emit(FeatureBooksLoading());
    var result = await homeRepo.fetchFeaturesBooks();

    result.fold((failure){
      emit(FeatureBooksFailure(failure.errMessage));
    }, (books){
      emit(FeatureBooksSuccess(books));
    });
  }
}
