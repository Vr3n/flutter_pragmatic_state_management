import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_event.dart';
import 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(initialState) {
    on<IncrementCounterEvent>((event, emit) {
      print(initialState);
      emit(state + 1);
    });

    on<AddToCounterEvent>((event, emit) => emit(state + 1));
  }

  static get initialState => const CounterState();

  /* Old way of registering events. */
  // Stream mapEventToState(event) async* { //   if (event is IncrementCounterEvent) {
  //     yield CounterState(count: ++countValue);
  //   }

  //   if (event is AddToCounterEvent) {
  //     countValue += event.number;
  //     yield CounterState(count: countValue);
  //   }
  // }
}
