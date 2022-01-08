import 'package:cliente_taller/autenticacion/Registrarse.dart';
import 'package:cliente_taller/autenticacion/Sign_in.dart';
import 'package:flutter/material.dart';

class Autenticacion extends StatefulWidget {
  @override
  _AutenticacionState createState() => _AutenticacionState();
}

class _AutenticacionState extends State<Autenticacion> {
  bool showSignIn = true;
  void toggleView() {
    setState(() => showSignIn = !showSignIn);
  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn) {
      return SignIn(toggleView: toggleView);
    } else {
      return Registrarse(toggleView: toggleView);
    }
  }
}
