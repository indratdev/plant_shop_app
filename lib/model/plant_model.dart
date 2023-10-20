enum ToleranceValue {
  min,
  max,
}

class PlantModel {
  int id;
  String name, description, type;
  double amount;
  bool isFavorite;
  Map<ToleranceValue, dynamic>? height;
  Map<ToleranceValue, dynamic>? temperature;
  String pot;
  List<String>? image;

  PlantModel({
    required this.id,
    required this.name,
    this.description = "",
    this.type = "",
    this.amount = 0.0,
    this.isFavorite = false,
    this.height,
    this.temperature,
    this.pot = "",
    this.image,
  });
}
