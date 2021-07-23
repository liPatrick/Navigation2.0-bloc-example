part of 'navigation_bloc.dart';

@immutable
abstract class NavigationEvent extends Equatable {
  const NavigationEvent({this.book});

  final Book? book;

  @override
  List<Object> get props => [];
}

class BookSelected extends NavigationEvent {
  const BookSelected({required this.book});

  final Book book;

  @override
  List<Object> get props => [book];
}

class BackToList extends NavigationEvent {
  const BackToList();

  @override
  List<Object> get props => [];
}
