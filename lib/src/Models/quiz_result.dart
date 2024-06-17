class QuizResult{
  int correctAnswers;
  int wrongAnswers;

  QuizResult(this.correctAnswers,this.wrongAnswers,);

  factory QuizResult.fromJson(Map<String, Object?> json) {
    return QuizResult(
      json['correctAnswers'] as int,
      json['wrongAnswers'] as int
    );
  }
  
  Map<String, Object?> toJson() {
    return {
      'correctAnswers': correctAnswers,
      'wrongAnswers': wrongAnswers
    };
  }
}