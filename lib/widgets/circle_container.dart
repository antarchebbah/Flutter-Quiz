import 'package:flutter/material.dart';

class CircleContainer extends StatelessWidget {
  const CircleContainer(
      {super.key,
      required this.width,
      required this.height,
      this.radius = 100,
      required this.color,
      this.dx = 0,
      this.dy = 0,
      this.shadowOpacity = 1,
      this.isHaveBorder = false,
      this.borderSize = 1});
  final double width, height, radius, dx, dy, shadowOpacity, borderSize;
  final Color color;
  final bool isHaveBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: isHaveBorder == true ? null : color,
          boxShadow: [
            BoxShadow(
              color: isHaveBorder == true
                  ? Colors.transparent
                  : Colors.black.withOpacity(shadowOpacity),
              blurRadius: 6,
              offset: Offset(dx, dy),
            )
          ],
          border: isHaveBorder == true
              ? Border.all(
                  color: color,
                  width: borderSize,
                )
              : null),
    );
  }
}
