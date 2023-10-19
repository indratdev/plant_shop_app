import 'package:flutter/material.dart';

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
      // width: 100,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const HomeScreen(),
            ),
          );
        },
        style: ButtonStyle(
          shape: MaterialStateProperty.all(const CircleBorder()),
          padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
          backgroundColor: MaterialStateProperty.all(
              CustomColor.greenColor), // <-- Button color
        ),
        child: Icon(
          Icons.arrow_forward,
          color: CustomColor.whiteV1Color,
          size: MediaQuery.sizeOf(context).height / 16,
        ),
      ),
    );
  }
}
