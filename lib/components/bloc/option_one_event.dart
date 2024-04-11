part of 'option_one_bloc.dart';

abstract class OptionOneEvent {}

final class OptionOneSuccessEvent extends OptionOneEvent {}

final class OptionOneIncreamentEvent extends OptionOneEvent {
  final int value;
  OptionOneIncreamentEvent({required this.value});
}

final class OptionOneResetEvent extends OptionOneEvent {}
