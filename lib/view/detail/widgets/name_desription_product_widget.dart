import 'package:flutter/material.dart';

import '../product_detail_screen.dart';

class NameDesriptionProductWidget extends StatelessWidget {
  const NameDesriptionProductWidget({
    super.key,
    required this.widget,
  });

  final ProductDetailScreen widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height / 5.5,
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(45, 18, 45, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.product.name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: Theme.of(context).textTheme.headlineLarge?.fontSize,
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
    );
  }
}
