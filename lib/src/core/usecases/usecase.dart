import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../error/failure.dart';

abstract class FailureUseCase<Type, Params> {
  Future<Either<Failure, Type>> call(final Params params);
}

abstract class FutureUseCase<Type, Params> {
  Future<Type> call(final Params params);
}

abstract class UseCase<Type, Params> {
  Type call(final Params params);
}

class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}
