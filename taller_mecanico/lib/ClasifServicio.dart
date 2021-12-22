class ClasifServicio {
  String name, sourceImage, description;
  ClasifServicio({
    this.name = "Name",
    this.sourceImage = "assets/images/face.png",
    this.description = "Description",
  });
}

List<ClasifServicio> tipos = [
  ClasifServicio(
    name: "Servicios",
    sourceImage: "assets/images/chilaquiles.jpg",
    description: "Se cuenta con servicios de afinacion, lavado de inyectores y cambio de aceite/filtros."
  ),
  ClasifServicio(
    name: "Fuel Inyection",
    sourceImage: "assets/images/chilaquiles.jpg",
    description: "Se cuenta con chequeo de sensores y cambios de bujia."
  ),
  ClasifServicio(
    name: "Mecanica",
    sourceImage: "assets/images/chilaquiles.jpg", 
    description: "Se cuenta con lavado de carbudares, cambios de bujias, cambios de filtros, entre otros"

  )
];