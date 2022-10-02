// BlocObserver which will help us observe all
// state changes in the application.

import 'package:flutter_bloc/flutter_bloc.dart';

/// {@template counter_observer}
/// [BlocObserver] for the counter application which
/// observes all state changes.
/// {@endtemplate}

class CounterObserver extends BlocObserver {
  //In this case, we're only overriding onChange to see all state changes that occur.
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    // ignore: avoid_print
    print('${bloc.runtimeType} $change');
  }
}