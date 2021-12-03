import 'package:bloc/bloc.dart';
import 'package:foodhub/food_hub/models/counter_model.dart';

/// {@template counter_cubit}
/// A [Cubit] which manages an [int] as its state.
/// {@endtemplate}
class CounterCubit extends Cubit<CounterModel> {
  /// {@macro counter_cubit}
  CounterCubit() : super(CounterModel());

  /// Add 1 to the current state.
  void increment() => emit(CounterModel(first: state.first + 1));

  /// Subtract 1 from the current state.
  void decrement() => emit(CounterModel(first: state.first -1));

  
  


}
