import 'package:flutter/material.dart';
import 'package:flutter_quiz/data/colors.dart';
import 'package:flutter_quiz/quiz.dart';

AppColors appColors = AppColors();
main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        backgroundColor: appColors.primaryColor,
        body: const Quiz(),
      ),
    ));
