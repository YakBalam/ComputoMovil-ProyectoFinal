//import 'dart:js';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:taller_mecanico/Home.dart';
import 'package:taller_mecanico/Servicio.dart';
import 'Servicio.dart';
import 'ClasifServicio.dart';
import 'Cita.dart';

class Pendientes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pendientes"), 
        centerTitle: true,
        //backgroundColor: Colors.red[200],
        backgroundColor: Colors.cyan[400],
      ), 
        
      body: 
        ListView.builder(
          itemCount: citas.length,
          itemBuilder: (context, index){
            print(index);
            return cardPendientes(context, index);
          },
          padding: const EdgeInsets.only(
            left: 10.0,
            right: 10.0
          ),
        ),
      //backgroundColor: Colors.white54,
      //backgroundColor: Colors.cyan[400],
      backgroundColor: Colors.red[200], 
    );
  }
}

Widget cardPendientes(BuildContext context, int indice) {
  return Card(
    //elevation: 100,
    //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    margin: EdgeInsets.only(right: 22, left: 22, top: 15),
    elevation: 10,
    //color: Colors.red[200],
    child: Column(children: [
      contentPendientes(context, indice)
    ]),
  );
}

Widget contentPendientes (BuildContext context, int indice){
  Cita cita = citas[indice];

  return ListTile(
    title: Row(children: [
      Container(
        width: 80,
        alignment: Alignment.center,
        child: Text("${cita.dia}"),
      ),

      Container(
        width: 207,
        child: Column(children: [
          Text(
            cita.propietario
          ),
          
          Text(
            "Coche: ${cita.coche}",
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
            ),
          ),

          Text(
            "Servicio: ${cita.servicio}",
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
            ),
          ),
        ]),
      ),
    ],)
  );
}


