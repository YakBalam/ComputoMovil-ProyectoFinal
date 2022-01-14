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
    fecha: DateTime(2022,1,15,12,30)
  ),
  CitaPendiente(
    propietario: "Lisset Noriega",
    coche: "Mazda",
    servicio: "Afinacion.",
    fecha: DateTime(2022,1,14,16,30)
  ),
  CitaPendiente(
    propietario: "Juana la Loca",
    coche: "Sedan",
    servicio: "Chequeo General",
    fecha: DateTime(2022,1,15,15,0)
  ),
  CitaPendiente(
    propietario: "Benito Bodoque",
    coche: "Corsa",
    servicio: "Cambio de aceite",
    fecha: DateTime(2022,1,16,14,30)
  ),
  CitaPendiente(
    propietario: "Juanin Perez",
    coche: "Combi",
    servicio: "Lavado Inyectores",
    fecha: DateTime(2022,1,15,18,0)
  ),
  CitaPendiente(
    propietario: "Sarah Connor",
    coche: "X-Trail",
    servicio: "Cambio de Bujias",
    fecha: DateTime(2022,1,15,18,0)
  ),
];