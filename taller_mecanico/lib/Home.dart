import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:taller_mecanico/Servicio.dart';
import 'Servicio.dart';
import 'ClasifServicio.dart';
import 'Cita.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inicio"), 
        centerTitle: true,
        backgroundColor: Colors.cyan[400],), 
      body: 
        ListView.builder(
          padding: const EdgeInsets.only(
            left: 10.0,
            right: 10.0
          ),
          itemCount: citas.length,
          itemBuilder: (context, index){
            print(index);
            return Column(children: [
              cardPendientes(context, index),
              cardCitas(context, index)
            ],);
          },
        ),
      backgroundColor: Colors.white70,
    );
  }
}



Widget cardPendientes(BuildContext context, int indice) {
    Cita cita = citas[indice];
    return Card(
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

          ListTile(
            title: Row(children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black, 
                    width: 2,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10)
                  ),
                ),
                height: 59,
                width: 100,
                alignment: Alignment.center,
                child: Text("${cita.dia}"),
              ),

              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black, 
                    width: 2,
                  ),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10)
                  ),
                ),
                width: 215,
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
        ]
      )
    );
}


Widget cardCitas(BuildContext context, int indice) {
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
