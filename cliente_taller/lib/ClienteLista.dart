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
    final clientes = Provider.of<List<Cliente>>(context);

    return ListView.builder(
      itemCount: clientes.length,
      itemBuilder: (context, index) {
        return ClienteTile(cliente: clientes[index]);
      },
    );
  }
}
