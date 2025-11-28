import 'package:flutter_bloc/flutter_bloc.dart';

// --- Events ---
abstract class CounterEvent {}

class IncrementEvent extends CounterEvent {
  final int value;
  IncrementEvent(this.value);
}

class DecrementEvent extends CounterEvent {
  final int value;
  DecrementEvent(this.value);
}

class MultiplyEvent extends CounterEvent {
  final int multiplier;
  MultiplyEvent(this.multiplier);
}

// --- State ---
class CounterState {
  final int value;
  CounterState(this.value);
}

// --- BLoC ---
class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(0)) {
    on<IncrementEvent>((event, emit) {
      emit(CounterState(state.value + event.value));
    });

    on<DecrementEvent>((event, emit) {
      emit(CounterState(state.value - event.value));
    });

    on<MultiplyEvent>((event, emit) {
      emit(CounterState(state.value * event.multiplier));
    });
  }
}
