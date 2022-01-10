import 'package:cliente_taller/autenticacion/Sign_in.dart';
import 'package:cliente_taller/models/UserApp.dart';
import 'package:cliente_taller/services/DatabaseService.dart';
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
  Future signInWithEmailAndPass(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //register with email and pass
  Future registerWithEmailAndPass(String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
      // crear un nuevo documento para el nuevo usuario
      await DatabaseService(uid: user!.uid).updateUserData('Cliente nuevo');

      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //sign out
  Future salir() async {
    try {
      return await _auth.signOut();
      //await _auth.signOut().then((value) => Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => SignIn()),(route) => false)));
    } catch (error) {
      print(error.toString());
      return null;
    }
  }
}
