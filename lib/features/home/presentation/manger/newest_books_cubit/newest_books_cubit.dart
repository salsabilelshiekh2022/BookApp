import 'package:bloc/bloc.dart';
import 'package:book_app/features/home/data/models/book_model/book_model.dart';
import 'package:book_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchBestSellerBooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepo.fetchBestSellerBooks();
    result.fold((failer) {
      emit(NewestBooksFailer(errorMsg: failer.errorMsg));
    }, (books) {
      emit(NewestBooksSuccess(books: books));
    });
  }
}
