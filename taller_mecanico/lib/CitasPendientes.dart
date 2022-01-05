//import 'dart:js';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:taller_mecanico/Home.dart';
import 'package:taller_mecanico/Servicio.dart';
import 'Servicio.dart';
import 'ClasifServicio.dart';
import 'CitaPendiente.dart';
import 'package:intl/intl.dart';

class CitasPendientes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Citas Pendientes"), 
        centerTitle: true,
        //backgroundColor: Colors.red[200],
        backgroundColor: Colors.cyan[400],
      ), 
        
      body: 
        ListView.builder(
          itemCount: citasP.length,
          itemBuilder: (context, index){
            print(index);
            return cardCitas(context, index);
          },
          padding: const EdgeInsets.only(
            left: 10.0,
            right: 10.0
          ),
        ),
      //backgroundColor: Colors.white54,
      //backgroundColor: Colors.cyan[400],
      backgroundColor: Colors.green, 
    );
  }
}

Widget cardCitas(BuildContext context, int indice) {
  return Card(
    //elevation: 100,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    margin: EdgeInsets.only(right: 22, left: 22, top: 15),
    elevation: 10,
    //color: Colors.red[200],
    child: Column(children: [
      contentCitas(context, indice),
    ]),
  );
}

Widget contentCitas (BuildContext context, int indice){
  CitaPendiente citaP = citasP[indice];
  return ListTile(
    title: Row(children: [
      Container(
        //color: Colors.yellow,
        width: 95,
        alignment: Alignment.center,
        child: Text(
          "${ DateFormat('dd-MM-yyyy hh:mm').format(citaP.fecha)}",
          textAlign: TextAlign.center,
          style:TextStyle(
            //color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 17
          ),
        ),
      ),

      Container(
        width: 207,
        child: Column(children: [
          
          Row(
            //crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "   Dueño: \n   Coche: \n   Servicio: ",
                textAlign: TextAlign.left,
                style:TextStyle(
                  //color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic
                ),
              ),

              Text(
                "${citaP.propietario}\n${citaP.coche}\n${citaP.servicio}",
                textAlign: TextAlign.left,
              ),
            ],
          ),


          ListTile(
            title: Row(
              //crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red,
                    primary: Colors.white,
                    padding: const EdgeInsets.only(
                      left: 10.0,
                      right: 10.0
                    ),
                  ),
                  onPressed: () {
                    /*Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPage(item: item),
                      ),
                    );*/
                  },
                  child: Text("Rechazar X"),
                ),

                SizedBox(width: 15),

                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.green,
                    primary: Colors.white,
                    
                  ),
                  onPressed: () {
                    /*Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPage(item: item),
                      ),
                    );*/
                  },
                  child: Text("Aceptar"),
                ),
              ],          
            ),
          )

        ]),
      ),
    ],)
  );
}


