import 'package:cliente_taller/Cliente.dart';
import 'package:cliente_taller/ClinteTile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ClienteLista extends StatefulWidget {
  @override
  _ClienteListaState createState() => _ClienteListaState();
}

class _ClienteListaState extends State<ClienteLista> {
  @override
  Widget build(BuildContext context) {
    final clientes = context.watch<List<Cliente>?>();

    return ListView.builder(
      itemCount: clientes?.length,
      itemBuilder: (context, index) {
        //print(clientes);
        //print('CLIENTES TAMANO ****');
        //print(clientes?.length);
        return ClienteTile(cliente: clientes?[index]);
      },
    );
  }
}
