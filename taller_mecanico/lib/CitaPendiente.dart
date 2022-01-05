class CitaPendiente {
  String propietario, coche, servicio;
  DateTime fecha;

  CitaPendiente({
    this.propietario = "Name del propietario",
    this.coche = "name del coche",
    this.servicio = "Servicio",
    required this.fecha
  });
}

List<CitaPendiente> citasP = [
  CitaPendiente(
    propietario: "Pepe Botella",
    coche: "Mustang",
    servicio: "Afinacion.",
    fecha: DateTime(2021,12,30,6,30)
  ),
  CitaPendiente(
    propietario: "Juana la Loca",
    coche: "Mamavan",
    servicio: "Chequeo General",
    fecha: DateTime(2021,12,25,5,30)
  ),
  CitaPendiente(
    propietario: "Benito Bodoque",
    coche: "Corsa",
    servicio: "Cambio de aceite",
    fecha: DateTime(2021,12,23,12,30)
  ),
  CitaPendiente(
    propietario: "Juanin",
    coche: "Combi",
    servicio: "Afinacion",
    fecha: DateTime(2021,12,13,16,30)
  ),
];