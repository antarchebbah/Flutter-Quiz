import 'package:flutter/material.dart';
//import 'package:flutter_quiz/data/colors.dart';
import 'package:flutter_quiz/screens/SplashScreen/splash_screen_stack.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //AppColors color = AppColors();
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const SplashScreenStack(
          fillCircleAlignment: Alignment.topRight,
          fillCircleDX: 90,
          fillCircleDY: -50,
          borderCircleAlignemnt: Alignment.centerLeft,
          borderCircleDX: 31,
          borderCircleDY: 40,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: 280,
            ),
            Text(
              'Flutter Quiz',
              style: GoogleFonts.libreBaskerville(
                  color: Colors.white,
                  fontSize: 47,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SplashScreenStack(
          fillCircleAlignment: Alignment.bottomLeft,
          fillCircleDX: -90,
          fillCircleDY: 80,
          borderCircleAlignemnt: Alignment.bottomRight,
          borderCircleDX: 50,
          borderCircleDY: 110,
          isHaveShadow: true,
          shadowOpacity: 0.4,
        )
      ],
    );
  }
}
