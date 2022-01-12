import 'package:cliente_taller/Cliente.dart';
import 'package:cliente_taller/auth.dart';
import 'package:cliente_taller/DatabaseService.dart';
import 'package:provider/provider.dart';
import 'package:cliente_taller/ClienteLista.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<Cliente?>?>.value(
      initialData: null,
      value: DatabaseService().clientes,
      child: Scaffold(
        backgroundColor: Colors.brown[50],
        appBar: AppBar(
          title: Text('Inicio'),
          backgroundColor: Colors.brown[400],
          elevation: 0.0,
          actions: <Widget>[
            ElevatedButton.icon(
              icon: Icon(Icons.person),
              label: Text('Cerrar sesión'),
              onPressed: () async {
                await _auth.salir();
                //Navigator.of(context).pop();
              },
            ),
          ],
        ),
        body: ClienteLista(),
      ),
    );
  }
}
