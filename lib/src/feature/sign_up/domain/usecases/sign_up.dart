import 'package:dartz/dartz.dart';


import '../../../../core/usecases/usecase.dart';

import '../failures.dart';
import '../repositories/sign_up.dart';

class SignUpUseCase implements FailureUseCase<Unit, SignUpParams> {
  final SignUpRepository signUpRepository;

  SignUpUseCase(this.signUpRepository);

  @override
  Future<Either<SignUpFailure, Unit>> call(final SignUpParams params) {
    return signUpRepository.signUp(params);
  }
}

class SignUpParams {
  final String emailAddress;
  final String password;
  final String firstName, lastName;

  String get fullName => '${firstName} ${lastName}';

  SignUpParams(
      {required this.emailAddress,
      required this.firstName,
      required this.lastName,
      required this.password});
}
