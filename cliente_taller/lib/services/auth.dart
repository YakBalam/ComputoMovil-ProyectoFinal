import 'package:cliente_taller/models/UserApp.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  // Instancia de la bd
  final FirebaseAuth _auth = FirebaseAuth.instance;
  // crear un objeto usuario
  _userFromFirebaseUser(User? user) {
    if (user != null) {
      return UserApp(uid: user.uid);
    } else {
      return null;
    }
  }

  // Stream: un usuario accedió, salió o no inició sesión
  Stream<UserApp> get user {
    return _auth
        .authStateChanges()
        .map((User? user) => _userFromFirebaseUser(user));
  }

  //sign in with email and pass

  //register with email and pass

  //sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
