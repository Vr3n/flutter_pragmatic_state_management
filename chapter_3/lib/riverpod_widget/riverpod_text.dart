import 'package:chapter_3/main.dart';
import 'package:chapter_3/model/counter_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RiverPodTextWidget extends ConsumerWidget {
  const RiverPodTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(counterProvider) as CounterModel;

    return Text(
      '${state.count}',
      style: Theme.of(context).textTheme.headline4,
    );
  }
}
