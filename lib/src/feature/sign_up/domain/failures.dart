
import '../../../core/error/failure.dart';

class SignUpFailure extends Failure {}


class WrongPasswordFailure extends SignUpFailure {}

class TooManyRequestFailure extends SignUpFailure {}

class EmailAlreadyInUseFailure extends SignUpFailure {}

class WeakPasswordFailure extends SignUpFailure {}
