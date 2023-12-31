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
        elevation: 0,
        backgroundColor: CustomColor.greyV2Color,
        centerTitle: true,
        title: const Text("Search Products"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: GlobalVariables.backButtonIcon,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: CircleAvatar(child: Image.asset(GlobalVariables.avatar)),
          )
        ],
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return TweenAnimationBuilder(
            tween: Tween(begin: 0.0, end: 1.0),
            duration: const Duration(milliseconds: 2000),
            builder: (context, value, child) {
              return ShaderMask(
                shaderCallback: (rect) {
                  return RadialGradient(
                          radius: value * 5,
                          colors: const [
                            Colors.white,
                            Colors.white,
                            Colors.transparent,
                            Colors.transparent,
                          ],
                          stops: const [0.0, 0.55, 0.6, 1.0],
                          center: const FractionalOffset(0.95, 0.90))
                      .createShader(rect);
                },
                child: child,
              );
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height / 13,
                    child: const Row(
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
        },
      ),
    );
  }
}
