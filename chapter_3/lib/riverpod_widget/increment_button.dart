import 'package:chapter_3/main.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

class IncrementConsumer extends ConsumerWidget {
  const IncrementConsumer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton(
      onPressed: () => ref.read(counterProvider.notifier).increment(),
      tooltip: 'Increment',
      child: const Icon(Icons.add),
    );
  }
}
