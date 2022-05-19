// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class ScreenB extends StatefulWidget {
  int counter;
  final Function(int) callBack;

  ScreenB({Key? key, required this.callBack, required this.counter})
      : super(key: key);

  @override
  State<ScreenB> createState() => _ScreenBState();
}

class _ScreenBState extends State<ScreenB> {
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
    final snackBar = SnackBar(
      content: Text('Incremented: ${widget.counter}'),
      duration: const Duration(seconds: 1),
      shape: const StadiumBorder(),
      behavior: SnackBarBehavior.floating,
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('Screen B'),
        leading: IconButton(
            onPressed: () => {Navigator.of(context).pop(widget.counter)},
            icon: const Icon(Icons.arrow_back_rounded)),
      ),
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.orange),
          ),
          child: const Text('Increment'),
          onPressed: () => {_incrementCounter()},
        ),
      ),
    );
  }
}
