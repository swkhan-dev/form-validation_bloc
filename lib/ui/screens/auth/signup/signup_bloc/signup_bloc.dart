import 'package:ecommerce_bloc/core/extensions/string_extensions.dart';
import 'package:ecommerce_bloc/ui/screens/auth/signup/signup_bloc/signup_events.dart';
import 'package:ecommerce_bloc/ui/screens/auth/signup/signup_bloc/signup_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupBloc extends Bloc<SignupEvents, SignupState> {
  SignupBloc() : super(SignupInvalidState()) {
    on<InputChangeSignupEvent>((event, emit) {
      if (!event.name.isValidName) {
        emit(SignupErrorState(error: "Inalid Name"));
      } else if (!event.email.isValidEmail) {
        emit(SignupErrorState(error: "Inalid Email"));
      } else if (!event.password.isValidPassword) {
        emit(SignupErrorState(error: "Inalid password"));
      } else if (!event.phone.isValidPhone) {
        emit(SignupErrorState(error: "Inalid phone number"));
      } else if (!event.cnic.isValidCnic) {
        emit(SignupErrorState(error: " Invalid CNIC"));
      } else {
        emit(SignupValidState());
      }
    });

    on<SubmittedSignupEvent>((event, emit) {
      //TODO: Implement Authenthication
      emit(SignupLoadingState());
    });
  }
}
