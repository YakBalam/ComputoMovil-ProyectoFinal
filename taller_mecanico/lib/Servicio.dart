class Servicio {
  String name, sourceImage, description;
  Servicio({
    this.name = "Name",
    this.sourceImage = "assets/images/face.png",
    this.description = "Description",
  });
}

List<Servicio> servicios = [
  Servicio(
    name: "Cambio de Aceite",
    sourceImage: "assets/images/chilaquiles.jpg",
    description: " Un cambio de aceite es simplemente el proceso de retirar el aceite usado "
                  "y el filtro de aceite y de colocar aceite nuevo (y un nuevo filtro) en el auto",
    
  ),
];