import 'package:flutter/material.dart';
import 'package:flutter_quiz/data/colors.dart';
import 'package:flutter_quiz/widgets/circle_container.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({super.key, required this.nextPage});
  final Function() nextPage;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Image.asset('assets/images/intro_vector_img.png'),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 60),
        child: Text(
          'Flutter & Dart Quiz to test your development skill',
          textAlign: TextAlign.center,
          style:
              GoogleFonts.libreBaskerville(fontSize: 30, color: Colors.white),
        ),
      ),
      const SizedBox(
        height: 120,
      ),
      Stack(
        children: [
          GestureDetector(
            onTap: nextPage,
            child: Container(
              alignment: Alignment.center,
              child: Transform.translate(
                offset: const Offset(-10, 0),
                child: Stack(alignment: Alignment.center, children: [
                  CircleContainer(
                    width: 300,
                    height: 60,
                    color: AppColors().secondColor,
                    shadowOpacity: 0,
                    radius: 20,
                  ),
                  Text(
                    'Get Started',
                    style: GoogleFonts.libreBaskerville(
                        fontSize: 28,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              blurRadius: 20,
                              offset: const Offset(0, 3))
                        ]),
                  ),
                ]),
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Transform.translate(
              offset: const Offset(-30, -45),
              child: CircleContainer(
                width: 150,
                height: 150,
                color: AppColors().secondColor,
                isHaveBorder: true,
              ),
            ),
          ),
        ],
      ),
    ]);
  }
}
