class UserApp {
  final String uid;
  UserApp({required this.uid});
}

class UserData {
  String? uid = '';
  String? name = '';
  List<String>? coches = ['Ninguno'];
  String? cocheActual = null;

  UserData({this.uid, this.name, this.coches, this.cocheActual});
}
