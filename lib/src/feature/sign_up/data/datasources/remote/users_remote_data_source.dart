import 'package:firebase_auth/firebase_auth.dart';

import '../../exceptions.dart';

class UsersRemoteDataSource {
  final FirebaseAuth firebaseAuth;
// firebase authentication
  UsersRemoteDataSource(this.firebaseAuth);


  // register
  Future<User?> register(final String name, final String email, final String password) async {
    try {
      final result = await firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      final user = result.user!;
      await Future.wait([
        user.updateDisplayName(name),
      ]);

      return result.user!;
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'email-already-in-use':
          throw EmailAlreadyInUseException();
        case 'invalid-email':
          throw InvalidEmailException();
        case 'weak-password':
          throw WeakPasswordException();
      }
      rethrow;
    }
  }
}
