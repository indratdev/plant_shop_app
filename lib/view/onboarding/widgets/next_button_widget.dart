import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../shared/utils/colors/custom_colors.dart';
import '../../home/home_screen.dart';

class NextButtonWidget extends StatelessWidget {
  const NextButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height / 9,
      width: MediaQuery.sizeOf(context).height / 9,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) {
                return HomeScreen();
              },
            ),
          );
        },
        child: CircleAvatar(
          backgroundColor: CustomColor.greenColor,
          child: FaIcon(
            FontAwesomeIcons.arrowRightLong,
            color: CustomColor.whiteV1Color,
            size: MediaQuery.sizeOf(context).height / 20,
          ),
        ),
      ),
    );
  }
}
