import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:taller_mecanico/Home.dart';
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
          itemCount: citasDia(),
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

int citasDia(){
  int cont=0;
  String hoy, fechaCita;
  hoy=DateFormat('dd-MM-yyyy').format(DateTime.now());
  
  for (int i = 0; i < citas.length; i++) {
    fechaCita = DateFormat('dd-MM-yyyy').format(citas[i].fecha);
    print("Hoy: ${hoy}     Cita: ${fechaCita}");
    if (fechaCita == hoy){
      cont = cont + 1;
    }
  }

  print(cont);

  return cont;
}

Widget cardPendientes(BuildContext context, int indice) {
  return Card(
    //elevation: 100,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
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
        //color: Colors.yellow,
        width: 95,
        alignment: Alignment.center,
        child: Text(
          "${ DateFormat('dd-MM-yyyy hh:mm').format(cita.fecha)}",
          textAlign: TextAlign.center,
          style:TextStyle(
            //color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 17
          ),
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
                "   Dueño: \n   Coche: \n   Servicio: ",
                textAlign: TextAlign.left,
                style:TextStyle(
                  //color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic
                ),
              ),

              Text(
                "${cita.propietario}\n${cita.coche}\n${cita.servicio}",
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ]),
      ),
    ],)
  );
}

