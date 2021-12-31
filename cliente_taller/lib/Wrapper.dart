import 'package:cliente_taller/autenticacion/Autenticacion.dart';
import 'package:cliente_taller/autenticacion/Sign_in.dart';
import 'package:cliente_taller/home/Home.dart';
import 'package:flutter/material.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //return home o autenticacion
    return Autenticacion();
  }
}
