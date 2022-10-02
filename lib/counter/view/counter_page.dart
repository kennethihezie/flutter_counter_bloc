import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/counter_cubit.dart';
import 'counter_view.dart';

// The CounterPage widget is responsible for creating a
// CounterCubit (which we will look at next) and providing
// it to the CounterView.
class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => CounterCubit(), child: const CounterView());
  }
}

/*
Note: It's important to separate or decouple the
creation of a Cubit from the consumption of a Cubit
in order to have code that is much more testable
and reusable.
 */
