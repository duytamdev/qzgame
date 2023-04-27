import 'package:flutter/material.dart';

class CheckQuestionWidget extends StatefulWidget {
  final bool isCorrect;
  final String question;
  final String correctAnswer;
  const CheckQuestionWidget({Key? key, required this.isCorrect, required this.question, required this.correctAnswer}) : super(key: key);

  @override
  State<CheckQuestionWidget> createState() => _CheckQuestionWidgetState();
}

class _CheckQuestionWidgetState extends State<CheckQuestionWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10, left: 20, right: 20),
      child: Row(
        children: [
          Container(
            width: 34,
            height: 34,
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            padding: const EdgeInsets.all(5),
            child: Icon(
              widget.isCorrect ? Icons.check : Icons.close,
              size: 22,
              color: widget.isCorrect ? Colors.green : Colors.red,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.question, style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),),
                Text(widget.correctAnswer, style: TextStyle(
                  color: Colors.green.shade50,
                  fontSize: 14,
                ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
