part of 'sign_up_bloc.dart';

abstract class SignUpEvent {}

class EmailChanged extends SignUpEvent {
  final String email;

  EmailChanged({required this.email});
}

class PasswordChanged extends SignUpEvent {
  final String password;

  PasswordChanged({required this.password});
}

class FirstNameChanged extends SignUpEvent {
  final String firstName;

  FirstNameChanged({required this.firstName});
}

class LastNameChanged extends SignUpEvent {
  final String lastName;

  LastNameChanged({required this.lastName});
}

class SignUpSubmitted extends SignUpEvent {
  SignUpSubmitted();
}
