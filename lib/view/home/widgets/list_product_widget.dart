import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:plant_shop_app/view/detail/product_detail_screen.dart';
import 'package:plant_shop_app/view/home/widgets/export.dart';

import '../../../model/plant_model.dart';

class ListProductWidget extends StatelessWidget {
  const ListProductWidget({
    super.key,
    required this.listProduct,
    required this.sizeContainer,
  });

  final List<PlantModel> listProduct;
  final double sizeContainer;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: MasonryGridView.builder(
        itemCount: listProduct.length,
        gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          final product = listProduct[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailScreen(product: product),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: (index == 0)
                  ? Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.sizeOf(context).height / 8,
                          child: Text(
                            "Found \n${listProduct.length} Result",
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .headlineLarge
                                  ?.fontSize,
                            ),
                          ),
                        ),
                        ProductWidget(
                          product: product,
                          sizeContainer: sizeContainer,
                        ),
                      ],
                    )
                  : ProductWidget(
                      product: product,
                      sizeContainer: sizeContainer,
                    ),
            ),
          );
        },
      ),
    );
  }
}
