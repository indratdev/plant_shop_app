import 'package:flutter/material.dart';
import 'package:plant_shop_app/shared/global_variables.dart';

import '../../../shared/utils/colors/custom_colors.dart';

class FilterProductWidget extends StatelessWidget {
  const FilterProductWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 12),
      decoration: BoxDecoration(
        color: CustomColor.whiteV2Color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: IconButton(
        onPressed: () {},
        icon: GlobalVariables.sliderIcon,
        iconSize: MediaQuery.sizeOf(context).width / 20,
      ),
    );
  }
}
