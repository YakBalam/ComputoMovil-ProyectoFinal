import 'package:cliente_taller/Cliente.dart';
import 'package:flutter/material.dart';

class ClienteTile extends StatelessWidget {
  final Cliente? cliente;
  ClienteTile({this.cliente});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Card(
        margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
        child: ListTile(
          leading: CircleAvatar(
            radius: 25.0,
            backgroundColor: Colors.brown,
          ),
          title: Text(cliente!.name),
          subtitle: Text('Hello'),
        ),
      ),
    );
  }
}
