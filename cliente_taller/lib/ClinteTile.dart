import 'package:cliente_taller/Cita.dart';
import 'package:cliente_taller/Cliente.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

Widget clienteTile(BuildContext context, int index) {
  return Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 10,
        margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
        child: Column(
          children: [
            contentCita(context, index),
          ],
        ),
      ));
}

Widget contentCita(BuildContext context, int indice) {
  Cita cita = citas[indice];
  return ListTile(
      title: Row(
    children: [
      Container(
        //color: Colors.yellow,
        width: 95,
        alignment: Alignment.center,
        child: Text(
          "${DateFormat('dd-MM-yyyy hh:mm').format(cita.fecha)}",
          textAlign: TextAlign.center,
          style: TextStyle(
              //color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 17),
        ),
      ),
      Container(
        //color: Colors.yellow,
        width: 210,
        child: Column(children: [
          Row(
            //crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "   Coche: \n   Servicio: ",
                textAlign: TextAlign.left,
                style: TextStyle(
                    //color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
              Text(
                "${cita.coche}\n${cita.servicio}",
                textAlign: TextAlign.left,
              ),
            ],
          ),
          ListTile(
            title: Row(
              //crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //SizedBox(width: 15),

                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red,
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
                  child: Text("Cancelar"),
                ),
              ],
            ),
          )
        ]),
      ),
    ],
  ));
}
