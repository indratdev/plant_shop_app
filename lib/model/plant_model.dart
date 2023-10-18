class PlantModel {
  int id;
  String name, description;
  double amount;
  bool isFavorite;
  String image;

  PlantModel({
    required this.id,
    required this.name,
    this.description = "",
    this.amount = 0.0,
    this.isFavorite = false,
    this.image = "",
  });
}
