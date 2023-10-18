import 'package:flutter/material.dart';
import 'package:plant_shop_app/controller/plant_controller.dart';
import 'package:plant_shop_app/model/plant_model.dart';
import 'package:plant_shop_app/shared/global_variables.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../shared/utils/colors/custom_colors.dart';

class PlantIndicatorWidget extends StatefulWidget {
  const PlantIndicatorWidget({
    super.key,
  });

  @override
  State<PlantIndicatorWidget> createState() => _PlantIndicatorWidgetState();
}

class _PlantIndicatorWidgetState extends State<PlantIndicatorWidget> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  PlantController plantController = PlantController();
  List<PlantModel> listPlantModel = [];

  @override
  void initState() {
    listPlantModel = plantController.getRandomList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final pages = List.generate(
      GlobalVariables.maxImageOnBoard,
      (index) => Container(
        width: 1200,
        decoration: BoxDecoration(
          // color: Colors.amber,
          borderRadius: BorderRadius.circular(16),
          // color: Colors.grey.shade300,
          image: DecorationImage(
            alignment: Alignment.center,
            image: AssetImage(
              listPlantModel[index].image,
            ),
            fit: BoxFit.scaleDown,
          ),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
      ),
    );

    return Column(
      children: [
        Container(
          // color: Colors.red,
          height: MediaQuery.sizeOf(context).height / 2,
          child: PageView.builder(
            controller: controller,
            // itemCount: pages.length,
            itemBuilder: (_, index) {
              return pages[index % pages.length];
            },
          ),
        ),
        SmoothPageIndicator(
            controller: controller,
            count: pages.length,
            effect: const ExpandingDotsEffect(
              dotColor: CustomColor.greyColor,
              activeDotColor: CustomColor.greenColor,
              dotHeight: 7,
              dotWidth: 7,
            )
            // const WormEffect(
            //   dotHeight: 16,
            //   dotWidth: 16,
            //   type: WormType.thinUnderground,
            // ),
            ),
      ],
    );
  }
}
