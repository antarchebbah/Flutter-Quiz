import 'package:flutter/material.dart';
import 'package:flutter_quiz/data/colors.dart';
import 'package:flutter_quiz/widgets/circle_container.dart';

class SplashScreenStack extends StatelessWidget {
  const SplashScreenStack(
      {super.key,
      required this.fillCircleAlignment,
      required this.borderCircleAlignemnt,
      required this.fillCircleDX,
      required this.fillCircleDY,
      required this.borderCircleDX,
      required this.borderCircleDY,
      this.isHaveShadow = false,
      this.shadowOpacity = 0.8});
  final Alignment fillCircleAlignment, borderCircleAlignemnt;
  final double fillCircleDX,
      fillCircleDY,
      borderCircleDX,
      borderCircleDY,
      shadowOpacity;
  final bool isHaveShadow;
  @override
  Widget build(BuildContext context) {
    AppColors color = AppColors();
    return Stack(
      children: [
        Container(
          alignment: fillCircleAlignment,
          child: Transform.translate(
            offset: Offset(fillCircleDX, fillCircleDY),
            child: CircleContainer(
              width: 200,
              height: 200,
              color: color.primaryColor,
              dx: isHaveShadow == true ? 20 : 0,
              dy: isHaveShadow == true ? -20 : 0,
              shadowOpacity: shadowOpacity,
            ),
          ),
        ),
        Container(
          alignment: borderCircleAlignemnt,
          child: Transform.translate(
            offset: Offset(borderCircleDX, borderCircleDY),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CircleContainer(
                  width: 150,
                  height: 150,
                  radius: 100,
                  color: color.secondColor,
                  isHaveBorder: true,
                ),
                CircleContainer(
                  width: 80,
                  height: 80,
                  color: color.secondColor,
                  shadowOpacity: 0,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
