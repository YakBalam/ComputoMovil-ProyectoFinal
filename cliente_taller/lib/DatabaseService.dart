import 'package:cliente_taller/Cliente.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String uid;
  DatabaseService({this.uid = ''});

  // Coleccion de referencia
  final CollectionReference coleccionCliente =
      FirebaseFirestore.instance.collection('clientes');

  Future<void> updateUserData(String name) async {
    return await coleccionCliente.doc(uid).set({
      'name': name,
      // more
    });
  }

  // Lista de cliente snapshot
  List<Cliente?> _clienteFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return Cliente(
        name: doc.get('name') ?? '',
      );
    }).toList();
  }

  // Saber si ocurren cambios en los datos de un usuario
  Stream<List<Cliente?>> get clientes {
    return coleccionCliente.snapshots().map(_clienteFromSnapshot);
  }
}
