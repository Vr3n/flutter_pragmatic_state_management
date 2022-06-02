import 'package:chapter_3/provider_widget/provider_counter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '${context.watch<Counter>().count}',
      style: Theme.of(context).textTheme.headline4,
    );
  }
}
