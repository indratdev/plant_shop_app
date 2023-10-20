import 'package:flutter/material.dart';
import 'package:plant_shop_app/shared/global_variables.dart';
import 'package:plant_shop_app/shared/utils/currency/currency.dart';
import 'package:plant_shop_app/view/home/widgets/export.dart';

import '../../../model/plant_model.dart';
import '../../../shared/utils/colors/custom_colors.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({
    super.key,
    required this.sizeContainer,
    required this.product,
  });

  final double sizeContainer;
  final PlantModel product;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: CustomColor.whiteV1Color,
        borderRadius: BorderRadius.circular(16),
      ),
      height: sizeContainer,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Expanded(
              child: Image.asset(
                product.image?.first ?? GlobalVariables.noImage,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 8),
              alignment: Alignment.centerLeft,
              child: ListTile(
                contentPadding: const EdgeInsets.all(0),
                title: Text(
                  product.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.w800,
                  ),
                ),
                subtitle: Text(
                  product.type,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: Theme.of(context).textTheme.bodySmall?.fontSize,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  CustomCurrency.formatCurrencyToUS(product.amount),
                  style: const TextStyle(
                    fontWeight: FontWeight.w800,
                  ),
                ),
                ProductFavoriteWidget(product: product),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
