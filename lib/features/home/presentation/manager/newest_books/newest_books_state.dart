part of 'newest_books_cubit.dart';

@immutable
sealed class NewestBooksState {

  const NewestBooksState();
}

final class NewestBooksLoading extends NewestBooksState {}
final class NewestBooksFailure extends NewestBooksState {
  final String errMsg;

  const NewestBooksFailure(this.errMsg);
}
final class NewestBooksSuccess extends NewestBooksState {
final List<BookModel> books;

  const NewestBooksSuccess(this.books);

}
