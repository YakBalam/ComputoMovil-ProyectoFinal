import 'package:cliente_taller/Cliente.dart';
import 'package:cliente_taller/ClienteLista.dart';
import 'package:cliente_taller/auth.dart';
import 'package:cliente_taller/DatabaseService.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    /*
    void _showSettingsPanel() {
      showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
            child: Text('botton sheet'),
          );
        },
      );
    }
    */
    return StreamProvider<List<Cliente?>?>.value(
      initialData: null,
      value: DatabaseService().cliente,
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
            /*ElevatedButton.icon(
              onPressed: () => _showSettingsPanel(),
              icon: Icon(Icons.settings),
              label: Text('Settings'),
            )*/
          ],
        ),
        body: ClienteLista(),
      ),
    );
  }
}
