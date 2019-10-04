class Question {
  String _questionText;
  bool _answer;

  Question(String questionText, bool answer) {
    _questionText = questionText;
    _answer = answer;
  }

  String getQuestionText() {
    return _questionText;
  }

  bool getQuestionAnswer() {
    return _answer;
  }
}
