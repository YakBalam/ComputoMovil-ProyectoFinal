import 'package:cliente_taller/Autenticacion.dart';
import 'package:cliente_taller/DatabaseService.dart';
import 'package:cliente_taller/Loading.dart';
import 'package:cliente_taller/SideMenu.dart';
import 'package:cliente_taller/UserApp.dart';
import 'package:cliente_taller/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final _formKey = GlobalKey<FormState>();
  //valores leidos
  String? _currentName = '';
  List<String> coches = ['Ninguno', 'Bocho', 'Tsuru', 'CR-V'];
  String? _currentCoche;

  @override
  Widget build(BuildContext context) {
    UserApp? user = Provider.of<UserApp?>(context);
    if (user == null) {
      return Autenticacion();
    }
    return Scaffold(
      backgroundColor: Colors.cyan[100],
      appBar: AppBar(
        title: Text('Edita tus datos'),
        backgroundColor: Colors.cyan[400],
        elevation: 0.0,
      ),
      drawer: sideMenu(context),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 50.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: StreamBuilder<UserData>(
              stream: DatabaseService(uid: user.uid).userData,
              builder: (context, snapshot) {
                if (snapshot != null) {
                  UserData? userData = snapshot.data;
                  //_currentCoche = userData?.cocheActual;
                  return Form(
                    key: _formKey,
                    child: Column(children: <Widget>[
                      SizedBox(height: 10.0),
                      TextFormField(
                        initialValue: userData?.name ?? null,
                        decoration: textInputDecoration.copyWith(
                            hintText: 'Ingresa un nombre de usuario'),
                        validator: (val) =>
                            val!.isEmpty ? 'Por favor ingresa un nombre' : null,
                        onChanged: (val) => setState(() => _currentName = val),
                      ),
                      SizedBox(height: 10.0),
                      DropdownButtonFormField<String>(
                        decoration: textInputDecoration.copyWith(
                            hintText: 'Escoge tu automóvil'),
                        value: userData?.cocheActual ?? null,
                        items:
                            //userData?.coches?.map(buildMenuCoches).toList(),
                            coches.map(buildMenuCoches).toList(),
                        onChanged: (value) =>
                            setState(() => _currentCoche = value),
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          if (_formKey.currentState!.validate()) {
                            await DatabaseService(uid: user.uid).updateUserData(
                              _currentName ?? '',
                              _currentCoche ?? '',
                              coches,
                            );
                            Navigator.pop(context);
                          }
                        },
                        child: Text('Actualizar'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.cyan[700],
                          onPrimary: Colors.white,
                        ),
                      ),
                    ]),
                  );
                } else {
                  return Loading();
                }
              }),
        ),
      ),
    );
  }

  DropdownMenuItem<String> buildMenuCoches(String coche) => DropdownMenuItem(
        value: coche,
        child: Text(coche),
      );
}
