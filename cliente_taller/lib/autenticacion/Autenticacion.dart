import 'package:cliente_taller/autenticacion/Sign_in.dart';
import 'package:flutter/material.dart';

class Autenticacion extends StatefulWidget {
  @override
  _AutenticacionState createState() => _AutenticacionState();
}

class _AutenticacionState extends State<Autenticacion> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SignIn(),
    );
  }
}
