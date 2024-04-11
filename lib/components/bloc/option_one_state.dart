part of 'option_one_bloc.dart';

abstract class OptionOneState {}

abstract class OptionOneActionState extends OptionOneState {}

final class OptionOneInitialState extends OptionOneState {}

final class OptionOneIncreamentState extends OptionOneState {
  final int value;
  OptionOneIncreamentState({required this.value});
}

final class OptionOneSuccessState extends OptionOneActionState {
  final String successMessage;
  OptionOneSuccessState({required this.successMessage});
}
