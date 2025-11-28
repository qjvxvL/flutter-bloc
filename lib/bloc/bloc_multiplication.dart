import 'package:flutter_bloc/flutter_bloc.dart';

import '../event/event_multiplication.dart';
import '../state/state_multiplication.dart';

class Bloc_multiplication
    extends Bloc<Event_multiplication, State_multiplication> {
  int number = 0;
  Bloc_multiplication() : super(State_multiplication_initial()) {
    on<Event_multiplication_kaliNumber>(onKurangNumber);
  }

  void onKurangNumber(Event_multiplication_kaliNumber event,
      Emitter<State_multiplication> emit) {
    number--;
    emit(State_multiplication_update(number));
  }
}
