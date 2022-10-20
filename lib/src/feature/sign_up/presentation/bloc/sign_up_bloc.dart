import 'package:bloc/bloc.dart';


import '../../domain/usecases/sign_up.dart';


part 'sign_up_event.dart';

part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final SignUpUseCase signUpUseCase;

  SignUpBloc(this.signUpUseCase) : super(SignUpState.initial()) {
    print('SignUpBloc');
    on<SignUpEvent>((event, emit) async {
      if (event is EmailChanged) {
        emit(state.copyWith(
          email: event.email,
        ));
      }
      if (event is PasswordChanged) {
        emit(state.copyWith(
          password: event.password,
        ));
      }

      if (event is FirstNameChanged) {
        emit(state.copyWith( firstName: event.firstName));
      }
      if (event is LastNameChanged) {
        emit(state.copyWith( lastName: event.lastName));
      }

      if (event is SignUpSubmitted) {
        final params = SignUpParams(
          emailAddress: state.email,
          password: state.password,
          firstName: state.firstName,
          lastName: state.lastName,
        );
        final result = await signUpUseCase.call(params);
        emit(state.copyWith());
      }
    });
  }
}
