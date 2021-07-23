part of 'navigation_bloc.dart';

@immutable
abstract class NavigationState {
  const NavigationState({this.selectedBook});

  final Book? selectedBook;
}

class NavigationInitial extends NavigationState {
  const NavigationInitial() : super(selectedBook: null);
}

class NavigationSelectedBook extends NavigationState {
  const NavigationSelectedBook({required this.selectedBook})
      : super(selectedBook: selectedBook);

  final Book selectedBook;
}
