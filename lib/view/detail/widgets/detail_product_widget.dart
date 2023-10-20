import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../model/plant_model.dart';
import '../../../shared/global_variables.dart';
import '../product_detail_screen.dart';
import 'export.dart';

class DetailProductWidget extends StatelessWidget {
  const DetailProductWidget({
    super.key,
    required this.widget,
  });

  final ProductDetailScreen widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(18, 18, 18, 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DetailIconProductWidget(
            icon: GlobalVariables.sortIcon,
            title: "Height",
            deskription:
                "${widget.product.height?[ToleranceValue.min]} Cm - ${widget.product.height?[ToleranceValue.max]} Cm",
          ),
          DetailIconProductWidget(
            icon: Icons.thermostat_sharp,
            title: "Temperature",
            deskription:
                "${widget.product.temperature?[ToleranceValue.min]}C - ${widget.product.temperature?[ToleranceValue.max]}C",
          ),
          DetailIconProductWidget(
            icon: FontAwesomeIcons.pooStorm,
            title: "Pot",
            deskription: widget.product.pot,
          ),
        ],
      ),
    );
  }
}
