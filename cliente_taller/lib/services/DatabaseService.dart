import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String uid;
  DatabaseService({required this.uid});

  // Coleccion de referencia
  final CollectionReference coleccionCliente =
      FirebaseFirestore.instance.collection('clientes');
  Future updateUserData(String nombre) async {
    return await coleccionCliente.doc(uid).set({
      'name': nombre,
      // more
    });
  }

  // Saber si ocurren cambios en los datos de un usuario
  Stream<QuerySnapshot> get clientesNow {
    return coleccionCliente.snapshots();
  }
}
