import 'package:chapter3_bloc/bloc/counter_bloc.dart';
import 'package:chapter3_bloc/bloc/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return BlocBuilder<CounterBloc, CounterState>(
    //   builder: (context, state) {
    //     return Text('${(state).count}');
    //   },
    return const Text('Hello');
  }
}
