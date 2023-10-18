import 'dart:math';

import 'package:plant_shop_app/model/plant_model.dart';

import '../shared/global_variables.dart';

class PlantController {
  // set dummy data
  final List<PlantModel> _listPlant = [
    PlantModel(
      id: 1,
      name: "cambodia",
      description: "",
      amount: 0.0,
      image: GlobalVariables.cambodia,
      isFavorite: false,
    ),
    PlantModel(
      id: 1,
      name: "geranium",
      description: "",
      amount: 0.0,
      image: GlobalVariables.geranium,
      isFavorite: false,
    ),
    PlantModel(
      id: 1,
      name: "hibiscus",
      description: "",
      amount: 0.0,
      image: GlobalVariables.hibiscus,
      isFavorite: false,
    ),
    PlantModel(
      id: 1,
      name: "jasmine",
      description: "",
      amount: 0.0,
      image: GlobalVariables.jasmine,
      isFavorite: false,
    ),
    PlantModel(
      id: 1,
      name: "lavender",
      description: "",
      amount: 0.0,
      image: GlobalVariables.lavender,
      isFavorite: false,
    ),
    PlantModel(
      id: 1,
      name: "lily",
      description: "",
      amount: 0.0,
      image: GlobalVariables.lily,
      isFavorite: false,
    ),
    PlantModel(
      id: 1,
      name: "orcid",
      description: "",
      amount: 0.0,
      image: GlobalVariables.orcid,
      isFavorite: false,
    ),
    PlantModel(
      id: 1,
      name: "rose",
      description: "",
      amount: 0.0,
      image: GlobalVariables.rose,
      isFavorite: false,
    ),
    PlantModel(
      id: 1,
      name: "sun flower",
      description: "",
      amount: 0.0,
      image: GlobalVariables.sunflower,
      isFavorite: false,
    ),
    PlantModel(
      id: 1,
      name: "tulip",
      description: "",
      amount: 0.0,
      image: GlobalVariables.tulip,
      isFavorite: false,
    ),
    PlantModel(
      id: 1,
      name: "geranium",
      description: "",
      amount: 0.0,
      image: GlobalVariables.cambodia,
      isFavorite: false,
    ),
  ];

  List<PlantModel> get listPlant => _listPlant;

  List<PlantModel> getRandomList() {
    int maxImage = GlobalVariables.maxImageOnBoard;
    final random = Random();
    final List<PlantModel> randomPlants = [];

    // Make sure that you have at least 4 items in _listPlant
    if (_listPlant.length >= maxImage) {
      final Set<int> selectedIndices = {};
      // Loop until you have 4 unique random indices
      while (selectedIndices.length < maxImage) {
        final randomIndex = random.nextInt(_listPlant.length);
        // Add the index to the Set if it's not already in it
        selectedIndices.add(randomIndex);
      }
      // Extract the PlantModels using the selected indices
      for (final index in selectedIndices) {
        randomPlants.add(_listPlant[index]);
      }
    }
    return randomPlants;
  }
}
