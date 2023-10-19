import 'package:flutter/material.dart';
import 'package:plant_shop_app/controller/plant_controller.dart';
import 'package:plant_shop_app/shared/global_variables.dart';
import 'package:plant_shop_app/shared/utils/colors/custom_colors.dart';
import 'package:plant_shop_app/view/home/widgets/export.dart';

import '../../model/plant_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = PlantController();
  List<PlantModel> listProduct = [];

  List<PlantModel> loadProducts() {
    return controller.listPlant;
  }

  @override
  void initState() {
    listProduct = loadProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double sizeContainer = MediaQuery.sizeOf(context).height / 3;

    return Scaffold(
      backgroundColor: CustomColor.greyV2Color,
      appBar: AppBar(
        backgroundColor: CustomColor.greyV2Color,
        centerTitle: true,
        title: const Text("Search Products"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: CircleAvatar(child: Image.asset(GlobalVariables.avatar)),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height / 13,
              child: Row(
                children: [
                  SearchProductWidget(),
                  FilterProductWidget(),
                ],
              ),
            ),
            // MasonryGridView
            ListProductWidget(
                listProduct: listProduct, sizeContainer: sizeContainer),
          ],
        ),
      ),
    );
  }
}
