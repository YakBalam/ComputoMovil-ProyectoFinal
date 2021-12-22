class Cita {
  String propietario, coche, servicio;
  int dia;
  Cita({
    this.propietario = "Name del propietario",
    this.coche = "name del coche",
    this.servicio = "Servicio",
    this.dia = 00,
  });
}

List<Cita> citas = [
  Cita(
    propietario: "Juanito Bodoque",
    coche: "Bocho",
    servicio: "Cambio de aceite.",
    dia : 10
  ),
  Cita(
    propietario: "Pedro Picapiedra",
    coche: "Tsuru",
    servicio: "Afinacion",
    dia : 10
  ),
  Cita(
    propietario: "Beto Perez",
    coche: "CR-V",
    servicio: "Limpieza.",
    dia : 12
  ),
];