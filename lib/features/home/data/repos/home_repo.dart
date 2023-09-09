import 'package:book_app/core/errors/failer.dart';
import 'package:book_app/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failer, List<BookModel>>> fetchBestSellerBooks();
  Future<Either<Failer, List<BookModel>>> fetchFeaturedBooks();
}
