import 'package:flutter/material.dart';
import 'package:flutter_quiz/data/colors.dart';
import 'package:flutter_quiz/data/questions.dart';
import 'package:flutter_quiz/screens/Questions/questions_summary.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.onRestart,
    required this.chosenAnswers,
  });
  final void Function() onRestart;
  final List<String> chosenAnswers;

  List<Map<String, Object>> get summaryData {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'user_answer': chosenAnswers[i]
        },
      );
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData
        .where(
          (data) => data['user_answer'] == data['correct_answer'],
        )
        .length;

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors().primaryColor,
        floatingActionButton: FloatingActionButton(
          onPressed: onRestart,
          backgroundColor: AppColors().secondColor,
          child: Icon(
            Icons.play_arrow_rounded,
            size: 54,
            color: AppColors().primaryColor,
          ),
        ),
        body: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(left: 15),
              child: Text(
                'Your Score :',
                style: GoogleFonts.libreBaskerville(
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Center(
              child: Text(
                'You answers $numCorrectQuestions of $numTotalQuestions question',
                style: GoogleFonts.libreBaskerville(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            QuestionsSummary(summaryData),
          ],
        ),
      ),
    );
  }
}
