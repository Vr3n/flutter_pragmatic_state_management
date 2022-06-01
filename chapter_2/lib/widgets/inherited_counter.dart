class MyInheritedWidget extends InheritedWidget {

  final MyCounterInheritedWidgetState data;

  MyInheritedWidget({Key? key, required this.child}) : super(key: key, child: child);

  final Widget child;

  static MyInheritedWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MyInheritedWidget>();
  }

  @override
  bool updateShouldNotify(MyInheritedWidget oldWidget) {
    return child != oldWidget;
  }
}

class MyCounterInheritedWidget extends StatefulWidget {

  final Widget child;

  MyCounterInheritedWidget({Key? key, required this.child}) : super(key: key);

  static MyCounterInheritedWidgetState of (BuildContext context) {
    final MyCounterInheritedWidgetState? result = context.dependOnInheritedWidgetOfExactType<MyInheritedWidget>()!.data;

    assert (result != null, 'No counter found in context');

    return result;
  }

  @override
  State<MyCounterInheritedWidget> createState() => MyCounterInheritedWidgetState();
}

class MyCounterInheritedWidgetState extends State<MyCounterInheritedWidget> {

  int _counterValue = 0;

  int get counterValue => _counterValue;

  void incrementCounter () {
    setState(() {
      _counterValue++;
    })
  }

  @override
  Widget build(BuildContext context) {
    return MyInheritedWidget(
      child: widget.child,
      data: this,
    );
  }
}