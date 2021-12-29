class CitaPendiente {
  String propietario, coche, servicio;
  int dia;
  CitaPendiente({
    this.propietario = "Name del propietario",
    this.coche = "name del coche",
    this.servicio = "Servicio",
    this.dia = 00,
  });
}

List<CitaPendiente> citasP = [
  CitaPendiente(
    propietario: "Pepe Botella",
    coche: "Mustang",
    servicio: "Afinacion.",
    dia : 10
  ),
  CitaPendiente(
    propietario: "Juana la Loca",
    coche: "Mamavan",
    servicio: "Chequeo General",
    dia : 10
  ),
  CitaPendiente(
    propietario: "Benito Bodoque",
    coche: "Corsa",
    servicio: "Cambio de aceite",
    dia : 12
  ),
  CitaPendiente(
    propietario: "Juanin",
    coche: "Combi",
    servicio: "Afinacion",
    dia : 10
  ),
];