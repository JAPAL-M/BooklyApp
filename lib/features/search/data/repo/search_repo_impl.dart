import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/api_services.dart';
import 'package:bookly_app/features/home/data/models/BookModel/book_model.dart';
import 'package:bookly_app/features/search/data/repo/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl implements SearchRepo{

  final ApiServices apiServices;

  SearchRepoImpl(this.apiServices);
  @override
  Future<Either<Failure, List<BookModel>>> fetchSearchBooks({String? search}) async{
    try {
      var result = await apiServices.get(
          endpoint: 'volumes?Filtering=free-ebooks&q=$search');
      List<BookModel> books = [];
      for(var item in result['items']){
        try{
          books.addAll(item);
        }catch(e){
          books.addAll(item);
        }
      }

      return right(books);
    }catch(e){
      if(e is DioException){
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

}