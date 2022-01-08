import 'package:cliente_taller/autenticacion/Autenticacion.dart';
import 'package:cliente_taller/home/Home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/UserApp.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //return home o autenticacion
    final user = Provider.of<UserApp?>(context);
    if (user == null) {
      return Autenticacion();
      //return Home();
    } else {
      return Home();
    }
  }
}
