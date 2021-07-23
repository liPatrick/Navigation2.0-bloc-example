import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import '../main.dart';

part 'navigation_event.dart';
part 'navigation_state.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(NavigationInitial());

  @override
  Stream<NavigationState> mapEventToState(
    NavigationEvent event,
  ) async* {
    if (event is BookSelected) {
      yield NavigationSelectedBook(selectedBook: event.book);
    } else if (event is BackToList) {
      yield NavigationInitial();
    } else {
      yield NavigationInitial();
    }
  }
}
