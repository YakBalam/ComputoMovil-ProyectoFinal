import 'package:flutter/material.dart';
import 'package:taller_mecanico/CitasPendientes.dart';

import 'package:taller_mecanico/Home.dart';
import 'package:taller_mecanico/HomePrueba.dart';
import 'package:taller_mecanico/Pendientes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: HomePrueba(),
      home: Home(),
      //home: Pendientes(),
      //home: CitasPendientes()
      //
    );
  }
}