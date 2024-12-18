import 'package:bookly_mvvm/core/errors/failures.dart';
import 'package:bookly_mvvm/core/utils/api_service.dart';
import 'package:bookly_mvvm/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_mvvm/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo{

  final ApiService apiService;

  HomeRepoImpl({required this.apiService});
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
   try {
     var data = await apiService.get(endPoint: 'volumes?Filtering=free-ebooks&q=doctor&Sorting=newest');
     List<BookModel> books = [];
     for( var item in data['items'] ){
       books.add(BookModel.fromJson(item));
     }
     return right(books);
   }  catch (e) {
     if(e is DioException) {
       return left(ServerFailure.fromDioErrors(e));
     }
     return left(ServerFailure(e.toString()));
   }

  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.get(endPoint: 'volumes?Filtering=free-ebooks&q=subject:programming');
      List<BookModel> books = [];

      for( var item in data['items'] ){
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    }  catch (e) {
      if(e is DioException) {
        return left(ServerFailure.fromDioErrors(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(String category) async {
    try {
      var data = await apiService.get(endPoint: 'volumes?Filtering=free-ebooks&q=$category&Sorting=relevance');
      List<BookModel> books = [];

      for( var item in data['items'] ){
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    }  catch (e) {
      if(e is DioException) {
        return left(ServerFailure.fromDioErrors(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }


}