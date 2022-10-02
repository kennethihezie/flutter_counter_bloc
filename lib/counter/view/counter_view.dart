import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_bloc/counter/cubit/counter_cubit.dart';

class CounterView extends StatelessWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Bloc"),
        centerTitle: true,
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
              key: const Key('counterView_increment_floatingActionButton'),
              child: const Icon(Icons.add),
              onPressed: () => context.read<CounterCubit>().increment()),

          const Padding(padding: EdgeInsets.only(top: 8.0)),

          FloatingActionButton(
              key: const Key('counterView_decrement_floatingActionButton'),
              child: const Icon(Icons.remove),
              onPressed: () => context.read<CounterCubit>().decrement()),
        ],
      ),

      body: Center(
        child: BlocBuilder<CounterCubit, int>(
          builder: (context, state){
            return Text('state: $state');
          },
        ),
      ),
    );
  }
}

/*
A BlocBuilder is used to wrap the Text widget in
order to update the text any time the CounterCubit
state changes. In addition, context.read<CounterCubit>()
is used to look-up the closest CounterCubit instance.

Note: Only the Text widget is wrapped in a BlocBuilder
because that is the only widget that needs to be
rebuilt in response to state changes in the CounterCubit.
Avoid unnecessarily wrapping widgets that don't need
to be rebuilt when a state changes.
 */
