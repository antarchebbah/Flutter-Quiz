import 'package:flutter/material.dart';
import 'package:flutter_quiz/screens/Questions/summary_item.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height * (70 / 100);
    return Container(
      margin: const EdgeInsets.only(top: 50),
      child: SizedBox(
        height: height,
        child: SingleChildScrollView(
          child: Column(
            children: summaryData.map(
              (data) {
                return SummaryItem(data);
              },
            ).toList(),
          ),
        ),
      ),
    );
  }
}
