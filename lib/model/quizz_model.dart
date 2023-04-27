class QuizModal {
 final String question;
  final List<String> options;
  final String correctAnswer;
  final String id;

  QuizModal(
      {
        required this.id,
        required this.question,
      required this.options,
      required this.correctAnswer});

  QuizModal.fromMap(Map<String, dynamic> data)
      : question = data['question'],
    id = data['id'],
        options = List<String>.from(data['options']),
        correctAnswer = data['correct_answer'];

}
