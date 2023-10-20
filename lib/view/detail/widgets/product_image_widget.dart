import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../shared/utils/colors/custom_colors.dart';

class ProductImageWidget extends StatelessWidget {
  const ProductImageWidget({
    super.key,
    required this.controller,
    required this.pages,
  });

  final PageController controller;
  final List<Container> pages;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height / 2.3,
          width: MediaQuery.sizeOf(context).width,
          child: PageView.builder(
            controller: controller,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) {
              return pages[index % pages.length];
            },
          ),
        ),
        Positioned(
          bottom: 0,
          right: MediaQuery.sizeOf(context).width / 3.5,
          child: SmoothPageIndicator(
            axisDirection: Axis.vertical,
            controller: controller,
            count: pages.length,
            effect: const ExpandingDotsEffect(
              dotColor: CustomColor.greyColor,
              activeDotColor: CustomColor.greenColor,
              dotHeight: 7,
              dotWidth: 7,
            ),
          ),
        ),
      ],
    );
  }
}
