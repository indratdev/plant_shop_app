import 'package:flutter/material.dart';

import '../../../model/plant_model.dart';
import '../../../shared/utils/colors/custom_colors.dart';

class ProductFavoriteWidget extends StatefulWidget {
  const ProductFavoriteWidget({
    super.key,
    required this.product,
  });

  final PlantModel product;

  @override
  State<ProductFavoriteWidget> createState() => _ProductFavoriteWidgetState();
}

class _ProductFavoriteWidgetState extends State<ProductFavoriteWidget> {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 16,
      backgroundColor: Colors.black,
      child: IconButton(
        onPressed: () {
          widget.product.isFavorite = !widget.product.isFavorite;
          setState(() {});
        },
        icon: Icon(
          size: 16,
          Icons.favorite,
          color: (widget.product.isFavorite)
              ? CustomColor.redColor
              : CustomColor.whiteV1Color,
        ),
      ),
    );
  }
}
