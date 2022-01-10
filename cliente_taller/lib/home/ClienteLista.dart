import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ClienteLista extends StatefulWidget {
  @override
  _ClienteListaState createState() => _ClienteListaState();
}

class _ClienteListaState extends State<ClienteLista> {
  @override
  Widget build(BuildContext context) {
    final clientes = Provider.of<QuerySnapshot>(context);
    //print(clientes.docs);
    for (var doc in clientes.docs) {
      print(doc.data());
    }
    return Container();
  }
}
