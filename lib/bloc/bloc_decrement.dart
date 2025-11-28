import 'package:flutter_bloc/flutter_bloc.dart';
import '../event/event_decrement.dart';
import '../state/state_decrement.dart';

class Bloc_decrement extends Bloc<Event_decrement, State_decrement> {
  int number = 0;
  Bloc_decrement():super(State_decrement_initial()) {
    on<Event_decrement_kurangNumber>(onKurangNumber);
  }

  void onKurangNumber(Event_decrement_kurangNumber event, Emitter<State_decrement> emit) {
    number--;
    emit(State_decrement_update(number));
  }
}