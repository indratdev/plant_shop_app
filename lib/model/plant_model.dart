class PlantModel {
  int id;
  String name, description, type;
  double amount;
  bool isFavorite;
  String image;

  PlantModel({
    required this.id,
    required this.name,
    this.description = "",
    this.type = "",
    this.amount = 0.0,
    this.isFavorite = false,
    this.image = "",
  });
}
