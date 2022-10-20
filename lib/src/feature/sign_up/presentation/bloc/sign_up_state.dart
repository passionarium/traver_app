part of 'sign_up_bloc.dart';


class SignUpState {
  final String email, password, firstName, lastName;

  const SignUpState(
      {required this.email,
      required this.firstName,
      required this.lastName,
      required this.password});

  factory SignUpState.initial() {
    return const SignUpState(
      email: '',
      lastName: '',
      firstName:'',
      password: '',
    );
  }

  //copy with
  SignUpState copyWith({
    final String? email,
    final String? password,
    final String? firstName,
    final String? lastName,
  }) {
    return SignUpState(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }
}
