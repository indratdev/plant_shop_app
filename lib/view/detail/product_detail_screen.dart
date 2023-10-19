import 'package:flutter/material.dart';
import 'package:plant_shop_app/view/onboarding/widgets/plant_indicator_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../model/plant_model.dart';
import '../../shared/global_variables.dart';
import '../../shared/utils/colors/custom_colors.dart';

class ProductDetailScreen extends StatefulWidget {
  PlantModel product;

  ProductDetailScreen({
    super.key,
    required this.product,
  });

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  final controller = PageController(viewportFraction: 1.0, keepPage: true);
  @override
  Widget build(BuildContext context) {
    final pages = List.generate(
      GlobalVariables.maxImageOnBoard,
      (index) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            alignment: Alignment.center,
            image: AssetImage(
              GlobalVariables.geranium,
            ),
            // AssetImage(
            //   listPlantModel[index].image,
            // ),
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
    return Scaffold(
      backgroundColor: CustomColor.greyV2Color,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: CustomColor.greyV2Color,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: GlobalVariables.backButtonIcon,
        ),
        actions: const [
          Padding(
              padding: EdgeInsets.only(right: 32),
              child: Icon(Icons.shopping_cart_outlined)
              // CircleAvatar(child: Image.asset(GlobalVariables.avatar)),
              )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height / 2.3,
                width: MediaQuery.sizeOf(context).width,
                child: PageView.builder(
                  controller: controller,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) {
                    return pages[index % pages.length];
                  },
                ),
              ),
              Positioned(
                bottom: 0,
                right: MediaQuery.sizeOf(context).width / 3.5,
                child: SmoothPageIndicator(
                  axisDirection: Axis.vertical,
                  controller: controller,
                  count: pages.length,
                  effect: const ExpandingDotsEffect(
                    dotColor: CustomColor.greyColor,
                    activeDotColor: CustomColor.greenColor,
                    dotHeight: 7,
                    dotWidth: 7,
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: MediaQuery.sizeOf(context).height / 5.5,
            width: double.infinity,
            // color: Colors.amber,
            margin: const EdgeInsets.fromLTRB(45, 18, 45, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.product.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize:
                        Theme.of(context).textTheme.headlineLarge?.fontSize,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 10),
                Text(
                  widget.product.description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: Theme.of(context).textTheme.bodySmall?.fontSize,
                    // fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: CustomColor.greenColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(36),
                  topRight: Radius.circular(36),
                ),
              ),
              width: double.infinity,
              child: Column(
                children: [
                  Flexible(
                    flex: 2,
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(18, 18, 18, 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Icon(
                                Icons.keyboard_double_arrow_up_sharp,
                                color: CustomColor.whiteV1Color,
                                size: MediaQuery.sizeOf(context).width / 10,
                              ),
                              Text(
                                "Height",
                                style: TextStyle(
                                  color: CustomColor.whiteV1Color,
                                ),
                              ),
                              Text(
                                "30cm - 40cm",
                                style: TextStyle(
                                  color: CustomColor.whiteV1Color,
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.thermostat_sharp,
                                color: CustomColor.whiteV1Color,
                                size: MediaQuery.sizeOf(context).width / 10,
                              ),
                              Text(
                                "Temperature",
                                style: TextStyle(
                                  color: CustomColor.whiteV1Color,
                                ),
                              ),
                              Text(
                                "20C to 25C",
                                style: TextStyle(
                                  color: CustomColor.whiteV1Color,
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.flood,
                                color: CustomColor.whiteV1Color,
                                size: MediaQuery.sizeOf(context).width / 10,
                              ),
                              Text(
                                "Pot",
                                style: TextStyle(
                                  color: CustomColor.whiteV1Color,
                                ),
                              ),
                              Text(
                                "Ciramic pot",
                                style: TextStyle(
                                  color: CustomColor.whiteV1Color,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Container(
                      // color: Colors.amber,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        // crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Total Price",
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  color: CustomColor.whiteV1Color,
                                ),
                              ),
                              Text(
                                "12,99",
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  color: CustomColor.whiteV1Color,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(36, 8, 36, 8),
                            decoration: BoxDecoration(
                              color: CustomColor.blackColor.withOpacity(.5),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "Add to Cart",
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  color: CustomColor.whiteV1Color,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
