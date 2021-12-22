//import 'dart:js';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:taller_mecanico/Home.dart';
import 'package:taller_mecanico/Servicio.dart';
import 'Servicio.dart';
import 'ClasifServicio.dart';
import 'Cita.dart';

class HomePrueba extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inicio"), 
        centerTitle: true,
        backgroundColor: Colors.cyan[400],), 
      body: 
        ListView(
          padding: const EdgeInsets.only(
            left: 10.0,
            right: 10.0
          ),
          children: <Widget>[
            cardPendientes(),
            cardCitas(),
          ] 
        ),
      backgroundColor: Colors.white70,
    );
  }
}


Widget cardPendientes() {
  return Card(
    //elevation: 100,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    margin: EdgeInsets.all(22),
    elevation: 10,
    child: Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            'Pendietes para hoy', 
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
          ),
          width: 500,
          decoration: BoxDecoration(
            color: Colors.redAccent[400],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            )
          ),
        ),

        Container(
          height: 300,
          margin: EdgeInsets.only(
            left: 10,
            right: 10,
          ),
          child: ListView.builder(
            itemCount: citas.length,
            itemBuilder: (context, index){
              print(index);
              return contentPendietes(context, index);
            },
          )
        )
      ],
    ),
  );
}

Widget contentPendietes (BuildContext context, int indice){
  Cita cita = citas[indice];
  return Card(
    shadowColor: Colors.redAccent[200],
    elevation: 5,
    child: Column(children: [
      ListTile(
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
      ),
    ]),
  );
}


Widget cardCitas() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    margin: EdgeInsets.all(15),
    elevation: 10,
    child: Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            'Citas pendientes', 
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
          ),
          width: 500,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            )
          ),
        ),

        Container(
          color: Colors.blue,
          child: Text("Prueba")
        ),
      ]
    )
  );
}
