import 'package:chapter3_bloc/bloc/counter_event.dart';

import 'bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/counter_state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<CounterBloc>(create: (context) => CounterBloc())
        ],
        child: MaterialApp(
          title: 'BLoC demo',
          theme: ThemeData(primarySwatch: Colors.grey),
          home: const MyHomePage(),
        ));
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hello')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            BlocBuilder(
                bloc: BlocProvider.of<CounterBloc>(context),
                builder: (context, state) {
                  return Text(
                    '${(state as CounterState).count}',
                    style: Theme.of(context).textTheme.headline4,
                  );
                })
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          BlocProvider.of<CounterBloc>(context).add(IncrementCounterEvent());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
