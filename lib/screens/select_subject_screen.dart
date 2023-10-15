import 'package:flutter/material.dart';
import 'package:flutter_quiz/widgets/circle_button.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectSubjectScreen extends StatelessWidget {
  const SelectSubjectScreen({super.key, required this.nextPage});
  final Function() nextPage;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 140,
            ),
            Text(
              'Choses Quiz Subject',
              style: GoogleFonts.libreBaskerville(
                  fontSize: 36, color: Colors.white),
            ),
            const SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleButton(
                  name: 'Dart',
                  method: nextPage,
                ),
                const SizedBox(
                  width: 50,
                ),
                CircleButton(
                  name: 'Flutter',
                  method: nextPage,
                )
              ],
            ),
            Transform.translate(
                offset: const Offset(0, 75),
                child: Image.asset('assets/images/quiz_subject_vector_img.png'))
          ],
        ),
      ),
    );
  }
}
