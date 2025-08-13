import 'package:flutter/material.dart';
import '../models/questions_model.dart';

class QuestionItem extends StatelessWidget {
  final QuestionItemModel questionItem;
  const QuestionItem({super.key, required this.questionItem});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            questionItem.title,
            style: TextTheme.of(
              context,
            ).headlineSmall!.copyWith(color: Colors.black87),
          ),
          
          Text(
            "answer and get points",
            style: TextTheme.of(
              context,
            ).titleLarge!.copyWith(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
