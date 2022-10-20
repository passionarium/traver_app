import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../domain/failures.dart';
import '../../domain/repositories/sign_up.dart';
import '../../domain/usecases/sign_up.dart';
import '../datasources/remote/users_remote_data_source.dart';
import '../exceptions.dart';

class SignUpRepositoryImpl implements SignUpRepository {
  final UsersRemoteDataSource usersRemoteDataSource;

  final FirebaseAuth firebaseAuth;

  SignUpRepositoryImpl(
    this.usersRemoteDataSource, {
    required this.firebaseAuth,
  });

  @override
  Future<Either<SignUpFailure, Unit>> signUp(
      final SignUpParams signUpParams) async {
    try {
      final result = await usersRemoteDataSource.register(signUpParams.fullName,
          signUpParams.emailAddress, signUpParams.password);

      return right(unit);
    } on SignUpException catch (e) {
      if (e is EmailAlreadyInUseException) {
        return Left(EmailAlreadyInUseFailure());
      } else if (e is WeakPasswordException) {
        return Left(WeakPasswordFailure());
      } else {
        return Left(WeakPasswordFailure());
      }
    } catch (e) {
      rethrow;
    }
  }
}
