import 'package:flutter/material.dart';

class ScreenA extends StatefulWidget {
  ScreenA({Key? key, required this.callBack, required this.counter})
      : super(key: key);

  final Function(int) callBack;

  int counter;

  @override
  State<ScreenA> createState() => _ScreenAState();
}

class _ScreenAState extends State<ScreenA> {
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      widget.counter++;
    });
    widget.callBack(widget.counter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Screen A'),
        leading: IconButton(
            onPressed: () => {Navigator.of(context).pop(widget.counter)},
            icon: const Icon(Icons.arrow_back_rounded)),
      ),
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.black)),
          child: const Text('Increment'),
          onPressed: () => {_incrementCounter()},
        ),
      ),
    );
  }
}
