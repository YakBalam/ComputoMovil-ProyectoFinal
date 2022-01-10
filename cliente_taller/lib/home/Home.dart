import 'package:cliente_taller/services/auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:cliente_taller/services/DatabaseService.dart';
import 'package:provider/provider.dart';
import 'package:cliente_taller/home/ClienteLista.dart';

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return StreamProvider<QuerySnapshot?>.value(
      initialData: null,
      value: DatabaseService(uid: '').clientesNow,
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
