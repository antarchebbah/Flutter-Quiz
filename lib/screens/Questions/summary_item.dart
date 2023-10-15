import 'package:flutter/material.dart';
import 'package:flutter_quiz/data/colors.dart';
import 'package:flutter_quiz/screens/Questions/question_identifer.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});
  final Map<String, Object> itemData;
  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData['user_answer'] == itemData['correct_answer'];
    return Padding(
      padding: const EdgeInsets.only(top: 25, left: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionIdentifier(
            isCorrectAnswer: isCorrectAnswer,
            questionIndex: itemData['question_index'] as int,
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemData['question'] as String,
                  textAlign: TextAlign.start,
                  style: GoogleFonts.libreBaskerville(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(itemData['user_answer'] as String,
                    style: TextStyle(
                      color: AppColors().secondColor,
                    )),
                Text(itemData['correct_answer'] as String,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 181, 254, 246),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
