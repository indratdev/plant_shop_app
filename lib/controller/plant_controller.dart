import 'dart:math';

import 'package:plant_shop_app/model/plant_model.dart';

import '../shared/global_variables.dart';

class PlantController {
  // set dummy data
  final List<PlantModel> _listPlant = [
    PlantModel(
      id: 1,
      name: "Plumeria",
      description: "Most species are deciduous shrubs or small trees",
      type: "Ornamental plants",
      amount: 10.0,
      image: [GlobalVariables.plumeria],
      isFavorite: false,
      temperature: {
        ToleranceValue.min: 18,
        ToleranceValue.max: 27,
      },
      height: {
        ToleranceValue.min: 4,
        ToleranceValue.max: 7,
      },
      pot: "Ceramic Pot",
    ),
    PlantModel(
      id: 2,
      name: "Geranium",
      description: "That are commonly known as geraniums or cranesbills.",
      type: "Ornamental plants",
      amount: 9.0,
      image: [
        GlobalVariables.geranium,
        GlobalVariables.geranium2,
        GlobalVariables.geranium3
      ],
      isFavorite: false,
      temperature: {
        ToleranceValue.min: 10,
        ToleranceValue.max: 16,
      },
      height: {
        ToleranceValue.min: 1,
        ToleranceValue.max: 60,
      },
      pot: "Ceramic Pot",
    ),
    PlantModel(
      id: 3,
      name: "Hibiscus",
      description:
          "A genus of flowering plants in the mallow family, Malvaceae",
      type: "Ornamental plants",
      amount: 12.99,
      image: [GlobalVariables.hibiscus],
      isFavorite: false,
      temperature: {
        ToleranceValue.min: 15,
        ToleranceValue.max: 29,
      },
      height: {
        ToleranceValue.min: 450,
        ToleranceValue.max: 900,
      },
      pot: "Ceramic Pot",
    ),
    PlantModel(
      id: 4,
      name: "Jasmine",
      description:
          "A genus of shrubs and vines in the olive family of Oleaceae",
      type: "Ornamental plants",
      amount: 11.0,
      image: [GlobalVariables.jasmine],
      isFavorite: false,
      temperature: {
        ToleranceValue.min: 18,
        ToleranceValue.max: 27,
      },
      height: {
        ToleranceValue.min: 4,
        ToleranceValue.max: 7,
      },
      pot: "Ceramic Pot",
    ),
    PlantModel(
      id: 5,
      name: "Lavender",
      description:
          "A genus of 47 known species of flowering plants in the mint family, Lamiaceae",
      type: "Ornamental plants",
      amount: 10.0,
      image: [GlobalVariables.lavender],
      isFavorite: false,
      temperature: {
        ToleranceValue.min: 18,
        ToleranceValue.max: 27,
      },
      height: {
        ToleranceValue.min: 4,
        ToleranceValue.max: 7,
      },
      pot: "Ceramic Pot",
    ),
    PlantModel(
      id: 6,
      name: "Lily",
      description:
          "A genus of herbaceous flowering plants growing from bulbs, all with large prominent flowers",
      type: "Ornamental plants",
      amount: 9.5,
      image: [GlobalVariables.lily],
      isFavorite: false,
      temperature: {
        ToleranceValue.min: 18,
        ToleranceValue.max: 27,
      },
      height: {
        ToleranceValue.min: 4,
        ToleranceValue.max: 7,
      },
      pot: "Ceramic Pot",
    ),
    PlantModel(
      id: 7,
      name: "Orcid",
      description: "Plants that belong to the family Orchidaceae",
      type: "Ornamental plants",
      amount: 13.0,
      image: [GlobalVariables.orcid],
      isFavorite: false,
      temperature: {
        ToleranceValue.min: 18,
        ToleranceValue.max: 27,
      },
      height: {
        ToleranceValue.min: 4,
        ToleranceValue.max: 7,
      },
      pot: "Ceramic Pot",
    ),
    PlantModel(
      id: 8,
      name: "Rose",
      description: "Either a woody perennial flowering plant of the genus Rosa",
      type: "Ornamental plants",
      amount: 0.0,
      image: [GlobalVariables.rose],
      isFavorite: false,
      temperature: {
        ToleranceValue.min: 18,
        ToleranceValue.max: 27,
      },
      height: {
        ToleranceValue.min: 4,
        ToleranceValue.max: 7,
      },
      pot: "Ceramic Pot",
    ),
    PlantModel(
      id: 9,
      name: "Sun Flower",
      description:
          "A genus comprising about 70 species of annual and perennial flowering plants in the daisy family Asteraceae commonly known as sunflowers",
      type: "Ornamental plants",
      amount: 12.99,
      image: [GlobalVariables.sunflower],
      isFavorite: false,
      temperature: {
        ToleranceValue.min: 18,
        ToleranceValue.max: 27,
      },
      height: {
        ToleranceValue.min: 4,
        ToleranceValue.max: 7,
      },
      pot: "Ceramic Pot",
    ),
    PlantModel(
      id: 10,
      name: "Tulip",
      description:
          "A genus of spring-blooming perennial herbaceous bulbiferous geophytes (having bulbs as storage organs)",
      type: "Ornamental plants",
      amount: 12.50,
      image: [GlobalVariables.tulip],
      isFavorite: false,
      temperature: {
        ToleranceValue.min: 18,
        ToleranceValue.max: 27,
      },
      height: {
        ToleranceValue.min: 4,
        ToleranceValue.max: 7,
      },
      pot: "Ceramic Pot",
    ),
  ];

  List<PlantModel> get listPlant => _listPlant;

  List<PlantModel> getRandomList() {
    int maxImage = GlobalVariables.maxImageOnBoard;
    final random = Random();
    final List<PlantModel> randomPlants = [];
    if (_listPlant.length >= maxImage) {
      final Set<int> selectedIndices = {};
      while (selectedIndices.length < maxImage) {
        final randomIndex = random.nextInt(_listPlant.length);
        selectedIndices.add(randomIndex);
      }
      for (final index in selectedIndices) {
        randomPlants.add(_listPlant[index]);
      }
    }
    return randomPlants;
  }
}
