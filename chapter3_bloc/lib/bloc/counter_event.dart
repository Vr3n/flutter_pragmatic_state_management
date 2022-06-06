class CounterEvent<int> {}

class IncrementCounterEvent extends CounterEvent {}

class AddToCounterEvent extends CounterEvent {
  final int number;

  AddToCounterEvent({required this.number});
}
