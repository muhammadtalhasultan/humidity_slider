import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:humidity_slider/humidity_slider/utils/icons.dart';
import 'package:humidity_slider/humidity_slider/utils/theme.dart';

class SliderBall extends StatelessWidget {
  const SliderBall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: BrandColors.sugarCane,
      ),
      height: kBallSize,
      width: kBallSize,
      alignment: Alignment.center,
      child: const Icon(
        FunIcons.verticalArrows,
        color: BrandColors.fiord,
        size: 20,
      ),
    );
  }
}
