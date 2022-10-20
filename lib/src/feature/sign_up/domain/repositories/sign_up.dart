import 'package:dartz/dartz.dart';
import '../failures.dart';
import '../usecases/sign_up.dart';


abstract class SignUpRepository {
  Future<Either<SignUpFailure, Unit>> signUp(
    final SignUpParams signUpParams,
  );
}

