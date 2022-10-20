class SignUpException implements Exception {}

class UserNotFoundException implements SignUpException {}

class WrongPasswordException implements SignUpException {}

class InvalidEmailException implements SignUpException {}

class UserDisabledException implements SignUpException {}

class WeakPasswordException implements SignUpException {}

class EmailAlreadyInUseException implements SignUpException {}

class TooManyRequestException implements SignUpException {}
