import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_bloc/bloc_observer/counter_observer.dart';

import 'app/app.dart';

void main() {
  //We're initializing the CounterObserver
  Bloc.observer = CounterObserver();

  runApp(const App());
}

