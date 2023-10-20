import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../shared/utils/colors/custom_colors.dart';

class DetailIconProductWidget extends StatelessWidget {
  IconData icon;
  String title;
  String deskription;

  DetailIconProductWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.deskription,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FaIcon(
          icon,
          color: CustomColor.whiteV1Color,
          size: MediaQuery.sizeOf(context).width / 12,
        ),
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w800,
            color: CustomColor.whiteV1Color,
          ),
        ),
        Text(
          deskription,
          style: const TextStyle(
            color: CustomColor.whiteV1Color,
          ),
        )
      ],
    );
  }
}
