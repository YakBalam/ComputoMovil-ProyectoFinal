import 'package:cliente_taller/Autenticacion.dart';
import 'package:cliente_taller/Cliente.dart';
import 'package:cliente_taller/ClienteLista.dart';
import 'package:cliente_taller/SideMenu.dart';
import 'package:cliente_taller/UserApp.dart';
import 'package:cliente_taller/auth.dart';
import 'package:cliente_taller/DatabaseService.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    UserApp? user = Provider.of<UserApp?>(context);
    if (user == null) {
      return Autenticacion();
    }
    return Scaffold(
      backgroundColor: Colors.cyan[100],
      appBar: AppBar(
        title: Text('Próximas citas'),
        backgroundColor: Colors.cyan[400],
        elevation: 0.0,
      ),
      body: ClienteLista(),
      drawer: sideMenu(context),
    );
  }
}
