import 'package:flutter/material.dart';

class ExampleStatefulPage extends StatefulWidget {
  const ExampleStatefulPage({Key? key}) : super(key: key);

  @override
  State<ExampleStatefulPage> createState() => _ExampleStatefulPageState();
}

class _ExampleStatefulPageState extends State<ExampleStatefulPage> {
  @override
  Widget build(BuildContext context) {
    print('Child Widget Build!');
    return Container();
  }
}
