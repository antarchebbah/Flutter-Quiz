import 'package:flutter/material.dart';
import 'package:flutter_quiz/data/colors.dart';
import 'package:flutter_quiz/screens/SplashScreen/splash_screen_stack.dart';
import 'package:flutter_quiz/widgets/level_button.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectQuizLevel extends StatelessWidget {
  const SelectQuizLevel({super.key, required this.nextPage});
  final Function() nextPage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 140,
          ),
          Text(
            'Choses Quiz Level',
            style:
                GoogleFonts.libreBaskerville(fontSize: 36, color: Colors.white),
          ),
          const SizedBox(
            height: 80,
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(left: 60),
            child: LevelButton(
                containerWidth: 170,
                color: AppColors().secondColor,
                levelNumber: '1',
                levelTitle: 'Beginners',
                method: nextPage),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            alignment: Alignment.centerRight,
            margin: const EdgeInsets.only(right: 60),
            child: LevelButton(
                containerWidth: 260,
                isRight: true,
                color: AppColors().blue,
                levelNumber: '2',
                levelTitle: 'Intermediate',
                method: nextPage),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(left: 60),
            child: LevelButton(
                containerWidth: 180,
                color: AppColors().purble,
                levelNumber: '3',
                levelTitle: 'Advanced',
                method: nextPage),
          ),
          const Expanded(
            child: SplashScreenStack(
                fillCircleAlignment: Alignment.bottomLeft,
                borderCircleAlignemnt: Alignment.centerRight,
                fillCircleDX: -90,
                shadowOpacity: 0.4,
                isHaveShadow: true,
                fillCircleDY: 90,
                borderCircleDX: -30,
                borderCircleDY: 40),
          )
        ],
      ),
    );
  }
}
