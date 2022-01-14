class Cita {
  String propietario, coche, servicio;
  DateTime fecha;

  Cita(
      {this.propietario = "Name del propietario",
      this.coche = "name del coche",
      this.servicio = "Servicio",
      required this.fecha});
}

List<Cita> citas = [
  Cita(
      propietario: "Juanito Bodoque",
      coche: "Bocho",
      servicio: "Cambio de aceite.",
      fecha: DateTime(2021, 12, 30, 6, 30)),
  Cita(
      propietario: "Pedro Picapiedra",
      coche: "Tsuru",
      servicio: "Afinacion",
      fecha: DateTime.now()),
  Cita(
      propietario: "Beto Perez",
      coche: "CR-V",
      servicio: "Limpieza.",
      fecha: DateTime(2021, 12, 25)),
];
