import 'package:flutter/material.dart';

import '../../../shared/utils/colors/custom_colors.dart';
import '../../../shared/utils/currency/currency.dart';
import '../product_detail_screen.dart';

class TotalPriceLabelWidget extends StatelessWidget {
  const TotalPriceLabelWidget({
    super.key,
    required this.widget,
  });

  final ProductDetailScreen widget;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          "Total Price",
          style: TextStyle(
            fontWeight: FontWeight.w800,
            color: CustomColor.whiteV1Color,
          ),
        ),
        Text(
          CustomCurrency.formatCurrencyToUS(widget.product.amount),
          style: const TextStyle(
            fontWeight: FontWeight.w800,
            color: CustomColor.whiteV1Color,
          ),
        ),
      ],
    );
  }
}
