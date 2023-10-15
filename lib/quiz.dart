import 'package:flutter/material.dart';
import 'package:flutter_quiz/data/questions.dart';
import 'package:flutter_quiz/screens/SplashScreen/splash_screen.dart';
import 'package:flutter_quiz/screens/introduction_screen.dart';
import 'package:flutter_quiz/screens/Questions/quiz_screen.dart';
import 'package:flutter_quiz/screens/result_screen.dart';
import 'package:flutter_quiz/screens/select_quiz_level.dart';
import 'package:flutter_quiz/screens/select_subject_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  String _activeScreen = 'splash_screen';
  List<String> _selectedAnswers = [];

  void openIntroScreen() => setState(() => _activeScreen = 'intro_screen');
  void toSelectSubjectScreen() {
    setState(() {
      _activeScreen = 'select_subject_screen';
    });
  }

  void toSelectQuizLevelScreen() {
    setState(() {
      _activeScreen = 'select_quiz_level';
    });
  }

  void startQuiz() {
    setState(() {
      _activeScreen = 'quiz_screen';
    });
  }

  void _chooseAnswer(String answer) {
    _selectedAnswers.add(answer);

    if (_selectedAnswers.length == questions.length) {
      setState(() {
        _activeScreen = 'result_screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      _selectedAnswers = [];
      _activeScreen = 'select_subject_screen';
    });
  }

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5), () => openIntroScreen());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget widgetScreen = const SplashScreen();
    switch (_activeScreen) {
      case 'intro_screen':
        widgetScreen = IntroductionScreen(nextPage: toSelectSubjectScreen);
        break;
      case 'select_subject_screen':
        widgetScreen = SelectSubjectScreen(
          nextPage: toSelectQuizLevelScreen,
        );
        break;
      case 'select_quiz_level':
        widgetScreen = SelectQuizLevel(
          nextPage: startQuiz,
        );
        break;
      case 'quiz_screen':
        widgetScreen = QuizScreen(
          onSelectAnswer: _chooseAnswer,
        );
        break;
      case 'result_screen':
        widgetScreen = ResultScreen(
          chosenAnswers: _selectedAnswers,
          onRestart: restartQuiz,
        );
    }
    return widgetScreen;
  }
}
