import 'package:flutter/material.dart';

import '../../../shared/utils/colors/custom_colors.dart';

class ChartButtonWidget extends StatelessWidget {
  const ChartButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(36, 12, 36, 12),
      decoration: BoxDecoration(
        color: CustomColor.blackColor.withOpacity(.3),
        borderRadius: BorderRadius.circular(18),
      ),
      child: TextButton(
        onPressed: () {},
        child: const Text(
          "Add to Cart",
          style: TextStyle(
            fontWeight: FontWeight.w800,
            color: CustomColor.whiteV1Color,
          ),
        ),
      ),
    );
  }
}
