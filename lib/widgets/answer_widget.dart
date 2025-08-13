import 'package:flutter/material.dart';
import 'package:quiz_app/models/answer_item_model.dart';

class AnswerWidget extends StatelessWidget {
  final AnswerItemModel answerModel;
  final VoidCallback questionChangeIndex;
  final bool isSelected;
  AnswerWidget({
    super.key,
    required this.answerModel,
    required this.questionChangeIndex,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          answerModel.onPressed();
          questionChangeIndex();
        },
        child: SizedBox(
          width: double.infinity,
          height: 60,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: isSelected ? Colors.green : Colors.white,
              border: Border.all(color: Colors.black26),
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Icon(
                    Icons.drafts_rounded,
                    color: isSelected ? Colors.white : Colors.black,
                  ),
                  const SizedBox(width: 10.0),
                  Text(
                    answerModel.title,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: isSelected ? Colors.white : Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          /* ElevatedButton(
            onPressed: () {
              answerModel.onPressed();
              questionChangeIndex();
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            child: Text(answerModel.title, style: TextStyle(color: Colors.white)),
          ), */
        ),
      ),
    );
  }
}
