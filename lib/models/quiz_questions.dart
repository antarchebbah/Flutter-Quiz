class QuizQuestions {
  const QuizQuestions(this.text, this.answers);
  final String text;
  final List<String> answers;

//Shuffled The Quiz Answer List
  List<String> get shuffledAnswer {
    final shuffledAnswers = List.of(answers);
    shuffledAnswers.shuffle();
    return shuffledAnswers;
  }
}
