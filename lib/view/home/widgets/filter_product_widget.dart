import 'package:flutter/material.dart';

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
        icon: const Icon(
          Icons.tune,
          color: Colors.black,
        ),
      ),
    );
  }
}
