abstract class SignupState {}

class SignupErrorState extends SignupState {
  String error;
  SignupErrorState({
    required this.error,
  });
}

class SignupLoadingState extends SignupState {}

class SignupValidState extends SignupState {}

class SignupInvalidState extends SignupState {}
