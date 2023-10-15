import 'package:flutter/material.dart';
import 'package:flutter_quiz/data/colors.dart';
import 'package:flutter_quiz/data/questions.dart';
import 'package:flutter_quiz/widgets/answer_button.dart';
import 'package:flutter_quiz/widgets/circle_container.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key, required this.onSelectAnswer});
  final void Function(String answer) onSelectAnswer;
  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var currentQuestion = questions[currentQuestionIndex];
    List<int> answersIndexList = [0, 1, 2, 3];
    answersIndexList.shuffle();
    return Center(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 50),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CircleContainer(
                  width: 390,
                  height: 365,
                  color: AppColors().secondColor,
                  radius: 50,
                  isHaveBorder: true,
                ),
                CircleContainer(
                  width: 360,
                  height: 315,
                  color: AppColors().secondColor,
                  radius: 50,
                  shadowOpacity: 0.2,
                ),
                Text(
                  currentQuestion.text,
                  textAlign: TextAlign.center,
                  softWrap: true,
                  style: GoogleFonts.libreBaskerville(
                      fontSize: 20, color: Colors.white),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          AnswerButton(
            dx: -25,
            color: AppColors().blue,
            text: currentQuestion.answers[answersIndexList[0]],
            method: () =>
                answerQuestion(currentQuestion.answers[answersIndexList[0]]),
          ),
          const SizedBox(
            height: 30,
          ),
          AnswerButton(
            dx: 25,
            color: AppColors().secondColor,
            text: currentQuestion.answers[answersIndexList[1]],
            method: () =>
                answerQuestion(currentQuestion.answers[answersIndexList[1]]),
          ),
          const SizedBox(
            height: 30,
          ),
          AnswerButton(
            dx: -25,
            color: AppColors().red,
            text: currentQuestion.answers[answersIndexList[2]],
            method: () =>
                answerQuestion(currentQuestion.answers[answersIndexList[2]]),
          ),
          const SizedBox(
            height: 30,
          ),
          AnswerButton(
            dx: 25,
            color: AppColors().purble,
            text: currentQuestion.answers[answersIndexList[3]],
            method: () =>
                answerQuestion(currentQuestion.answers[answersIndexList[3]]),
          ),
        ],
      ),
    );
  }
}
