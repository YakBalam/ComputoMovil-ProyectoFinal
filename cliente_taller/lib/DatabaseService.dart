import 'package:cliente_taller/Cliente.dart';
import 'package:cliente_taller/UserApp.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String uid;
  DatabaseService({this.uid = ''});

  // Coleccion de referencia
  final CollectionReference coleccionCliente =
      FirebaseFirestore.instance.collection('cliente');

  Future<void> updateUserData(
      String name, String cocheActual, List<String> coches) async {
    return await coleccionCliente.doc(uid).set({
      'name': name,
      'cocheActual': cocheActual,
      'coches': coches,
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

  // Saber si ocurren cambios en los datos
  Stream<List<Cliente?>> get cliente {
    return coleccionCliente.snapshots().map(_clienteFromSnapshot);
  }

  // userData from Snapshot
  UserData _userDataFromSnapshot(DocumentSnapshot snapshot) {
    return UserData(
      uid: uid,
      name: snapshot.get('name'),
      coches: snapshot.get('coches'),
      cocheActual: snapshot.get('cocheActual'),
    );
  }

  Stream<UserData> get userData {
    return coleccionCliente.doc(uid).snapshots().map(_userDataFromSnapshot);
  }
}
