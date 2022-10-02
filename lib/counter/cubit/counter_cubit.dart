import 'package:flutter_bloc/flutter_bloc.dart';


/// {@template counter_cubit}
/// A [Cubit] which manages an [int] as its state.
/// {@endtemplate}
class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  /// Add 1 to the current state.
  increment() => emit(state + 1);

  /// Subtract 1 from the current state.
  decrement() => emit(state - 1);

}