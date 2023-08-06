import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/home/data/models/BookModel/book_model.dart';
import 'package:bookly_app/features/home/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo{
  @override
  Future<Either<Failures, List<BookModel>>> fetchBestSellerBox() {
    // TODO: implement fetchBestSellerBox
    throw UnimplementedError();
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeaturesBox() {
    // TODO: implement fetchFeaturesBox
    throw UnimplementedError();
  }
}