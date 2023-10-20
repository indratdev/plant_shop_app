import 'package:flutter/material.dart';
import 'package:plant_shop_app/view/detail/widgets/export.dart';

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
      widget.product.image?.length ?? 0,
      (index) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            alignment: Alignment.center,
            image: AssetImage(
              widget.product.image?[index] ?? GlobalVariables.noImage,
            ),
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
          ProductImageWidget(controller: controller, pages: pages),
          NameDesriptionProductWidget(widget: widget),
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
                    child: DetailProductWidget(
                      widget: widget,
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TotalPriceLabelWidget(widget: widget),
                        const ChartButtonWidget(),
                      ],
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
