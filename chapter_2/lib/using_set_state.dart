import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PageTwo extends StatefulWidget {
  int counter;
  final Function(int) callback;
  PageTwo({Key? key, required this.counter, required this.callback})
      : super(key: key);

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      widget.counter++;
    });
    widget.callback(widget.counter);
  }

  @override
  Widget build(BuildContext context) {
    print('page 2 rebult');
    print('setState counter: ${widget.counter}');
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop(widget.counter);
            },
            icon: const Icon(Icons.arrow_back_rounded)),
        title: const Text('Set State Demo'),
      ),
      body: Center(
          child: Text(
        '${widget.counter}',
        style: Theme.of(context).textTheme.headline4,
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
