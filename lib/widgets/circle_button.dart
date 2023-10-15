import 'package:flutter/material.dart';
import 'package:flutter_quiz/data/colors.dart';
import 'package:flutter_quiz/widgets/circle_container.dart';
import 'package:google_fonts/google_fonts.dart';

class CircleButton extends StatelessWidget {
  const CircleButton({super.key, required this.name, required this.method});
  final String name;
  final Function() method;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: method,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CircleContainer(
            width: 150,
            height: 150,
            color: AppColors().secondColor,
            isHaveBorder: true,
            borderSize: 5,
          ),
          Column(
            children: [
              Image.asset(
                'assets/images/$name.png',
                width: 60,
                height: 60,
              ),
              Text(
                name,
                style: GoogleFonts.libreBaskerville(
                    fontSize: 28, color: Colors.white),
              ),
            ],
          )
        ],
      ),
    );
  }
}
