import 'package:flutter/material.dart';

import '../../../shared/utils/colors/custom_colors.dart';

class SearchProductWidget extends StatelessWidget {
  const SearchProductWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: CustomColor.whiteV2Color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: TextFormField(
          decoration: const InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search),
            hintText: "Plants",
          ),
        ),
      ),
    );
  }
}
