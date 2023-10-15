import 'package:flutter/material.dart';
import 'package:flutter_quiz/widgets/circle_container.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key,
      required this.dx,
      required this.color,
      required this.text,
      required this.method});
  final double dx;
  final Color color;
  final String text;
  final void Function() method;

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(dx, 0),
      child: GestureDetector(
        onTap: method,
        child: Stack(
          alignment: Alignment.center,
          children: [
            CircleContainer(
              width: 500,
              height: 60,
              color: color,
              radius: 50,
              shadowOpacity: 0.4,
            ),
            Text(
              text,
              textAlign: TextAlign.center,
              style: GoogleFonts.libreBaskerville(
                  fontSize: 16, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
