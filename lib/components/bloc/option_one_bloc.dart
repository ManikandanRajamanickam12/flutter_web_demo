import 'package:bloc/bloc.dart';

part 'option_one_event.dart';
part 'option_one_state.dart';

class OptionOneBloc extends Bloc<OptionOneEvent, OptionOneState> {
  int countValue = 0;
  OptionOneBloc() : super(OptionOneInitialState()) {
    on<OptionOneIncreamentEvent>((event, emit) {
      countValue = countValue + event.value;
      emit(OptionOneIncreamentState(value: countValue));
    });
    on<OptionOneSuccessEvent>((event, emit) {
      emit(OptionOneSuccessState(successMessage: "Dummy message .....!"));
    });
    on<OptionOneResetEvent>((event, emit) {
      emit(OptionOneInitialState());
    });
  }
}
