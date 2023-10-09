part of 'calculator_cubit.dart';

@immutable
abstract class CalculatorState {}

class CalculatorInitial extends CalculatorState {}

class CalculationState extends CalculatorState{}

class IncrementState extends CalculatorState{}

class DecrementState extends CalculatorState{}

class MultiplyState extends CalculatorState{}

class DivisionState extends CalculatorState{}





