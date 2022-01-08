import 'package:cliente_taller/Wrapper.dart';
import 'package:cliente_taller/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'models/UserApp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Firebase.initializeApp(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Container(child: Text('falló la conexión'));
            // return SomethingWentWrong();
          }

          // Once complete, show your application
          if (snapshot.connectionState == ConnectionState.done) {
            return StreamProvider<UserApp?>.value(
                initialData: null,
                value: AuthService().user,
                child: MaterialApp(
                  home: Wrapper(),
                ));
          }

          // Otherwise, show something whilst waiting for initialization to complete
          return Container(child: Text('Cargando ...'));
          // return Loading();
        });
  }
}
