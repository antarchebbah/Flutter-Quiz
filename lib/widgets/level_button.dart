import 'package:flutter/material.dart';
import 'package:flutter_quiz/widgets/circle_container.dart';
import 'package:google_fonts/google_fonts.dart';

class LevelButton extends StatelessWidget {
  const LevelButton(
      {super.key,
      required this.containerWidth,
      required this.color,
      required this.levelNumber,
      required this.levelTitle,
      required this.method,
      this.isRight = false});
  final Color color;
  final double containerWidth;
  final String levelNumber, levelTitle;
  final Function() method;
  final bool isRight;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Transform.translate(
          offset:
              isRight != true ? const Offset(-30, -30) : const Offset(190, -30),
          child: CircleContainer(
            width: 100,
            height: 100,
            color: color,
            isHaveBorder: true,
          ),
        ),
        GestureDetector(
          onTap: method,
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              CircleContainer(
                  width: containerWidth,
                  height: 100,
                  radius: 20,
                  shadowOpacity: 0,
                  color: color),
              Container(
                margin: const EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      levelNumber,
                      style: GoogleFonts.libreBaskerville(
                          fontSize: 26,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      levelTitle,
                      style: GoogleFonts.libreBaskerville(
                          fontSize: 26,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
