import 'package:cliente_taller/Autenticacion.dart';
import 'package:cliente_taller/Home.dart';
import 'package:cliente_taller/UserApp.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //return home o autenticacion
    final user = Provider.of<UserApp?>(context);
    if (user == null) {
      return Autenticacion();
    } else {
      return Home();
    }
  }
}
