class Cita {
  String propietario, coche, servicio;
  DateTime fecha;

  Cita({
    this.propietario = "Name del propietario",
    this.coche = "name del coche",
    this.servicio = "Servicio",
    required this.fecha
  });
}

List<Cita> citas = [
  Cita(
    propietario: "Pedro Picapiedra",
    coche: "Tsuru",
    servicio: "Afinacion",
    fecha: DateTime(2022,1,13,11,30)
  ),
  Cita(
    propietario: "Irma Garcia",
    coche: "Bocho",
    servicio: "Cambio de aceite.",
    fecha: DateTime(2022,1,13,9,30)
  ),
  Cita(
    propietario: "Beto Perez",
    coche: "CR-V",
    servicio: "Limpieza",
    fecha: DateTime(2022,1,13,13,0)
  ),
  Cita(
    propietario: "Balam Miranda",
    coche: "Pilot",
    servicio: "Cambio de Filtros",
    fecha: DateTime(2022,1,14,10,0)
  ),
  Cita(
    propietario: "Juanito Bodoque",
    coche: "Versa",
    servicio: "Cambio de Bujias",
    fecha: DateTime(2022,1,14,13,0)
  ),
  Cita(
    propietario: "Alan Gomez",
    coche: "Frontier",
    servicio: "Limpieza",
    fecha: DateTime(2022,1,14,15,0)
  ),
];