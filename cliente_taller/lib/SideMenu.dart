import 'package:cliente_taller/Autenticacion.dart';
import 'package:cliente_taller/Home.dart';
import 'package:cliente_taller/Settings.dart';
import 'package:cliente_taller/auth.dart';
import 'package:flutter/material.dart';

Widget sideMenu(BuildContext context) {
  final AuthService _auth = AuthService();
  return Drawer(
    //elevation: 100,

    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          //margin: EdgeInsets.only(right: 22, left: 22, top: 15),
          decoration: BoxDecoration(
            color: Colors.cyan[800],
          ),
          child: Text('Menú',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
              textAlign: TextAlign.center),
        ),
        SizedBox(height: 20),
        ListTile(
            leading: Icon(Icons.car_repair_rounded),
            title: TextButton(
              style: TextButton.styleFrom(
                  primary: Colors.black, alignment: Alignment.centerLeft),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Home(),
                  ),
                );
              },
              child: Text(
                'Próximas citas',
                style: TextStyle(fontSize: 16),
              ),
            )),
        ListTile(
            leading: Icon(Icons.calendar_today_outlined),
            title: TextButton(
              style: TextButton.styleFrom(
                  primary: Colors.black, alignment: Alignment.centerLeft),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Home(),
                  ),
                );
              },
              child: Text(
                'Agendar una cita',
                style: TextStyle(fontSize: 16),
              ),
            )),
        ListTile(
            leading: Icon(Icons.account_circle),
            title: TextButton(
              style: TextButton.styleFrom(
                  primary: Colors.black, alignment: Alignment.centerLeft),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Settings(),
                  ),
                );
              },
              child: Text(
                'Editar perfil',
                style: TextStyle(fontSize: 16),
              ),
            )),
        ListTile(
            leading: Icon(Icons.logout),
            title: TextButton(
              style: TextButton.styleFrom(
                  primary: Colors.black, alignment: Alignment.centerLeft),
              onPressed: () async {
                await _auth.salir();
              },
              child: Text(
                'Salir',
                style: TextStyle(fontSize: 16),
              ),
            )),
      ],
    ),
  );
}
