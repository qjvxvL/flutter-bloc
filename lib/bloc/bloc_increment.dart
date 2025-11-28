import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:session19/event/event_increment.dart';
import 'package:session19/state/state_increment.dart';

class Bloc_increment extends Bloc<Event_increment, State_increment> {
  int number = 0;
  Bloc_increment():super(State_increment_initial()) {
    on<Event_increment_tambahNumber>(onTambahNumber);
  }

  void onTambahNumber(Event_increment_tambahNumber event, Emitter<State_increment> emit) {
    number++;
    emit(State_increment_update(number));
  }
}