import 'package:flutter/material.dart';
import 'package:quiz_app/models/answer_item_model.dart';
import 'package:quiz_app/models/questions_model.dart';
import 'package:quiz_app/widgets/question_item.dart';
import 'package:quiz_app/widgets/total_score_widget.dart';

import '../widgets/answer_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  int totalScore = 0;
  bool showTotalScore = false;
  AnswerItemModel? selectedAnswer; // Track which answer is selected
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    index = 0;
  }

  @override
  Widget build(BuildContext context) {
    showTotalScore = totalScore >= questions.length * 10;
    return Scaffold(
      /* appBar: AppBar(
        title: const Text("Home", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ), */
      body:
          !showTotalScore
              ? SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        QuestionItem(questionItem: questions[index]),

                        SizedBox(height: 20.0),

                        Column(
                          children:
                              questions[index].answers.map((answer) {
                                return AnswerWidget(
                                  answerModel: answer,
                                  isSelected: selectedAnswer == answer,

                                  questionChangeIndex: () {
                                    setState(() {
                                      selectedAnswer = answer;
                                    });
                                  },
                                );
                              }).toList(),
                        ),
                        Spacer(),
                        SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {
                              if (index < questions.length) {
                                setState(() {
                                  debugPrint("index $index");
                                  index++;
                                  // Reset selection for next question
                                });
                              }
                              setState(() {
                                totalScore += 10;
                                debugPrint("total score :$totalScore");
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black87,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            child: Text(
                              "Next",
                              style: Theme.of(context).textTheme.labelLarge!
                                  .copyWith(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
              : TotalScoreWidget(
                totalScore: totalScore,
                resetOnPressedScore: () {
                  setState(() {
                    totalScore = 0;
                    index = 0;
                    selectedAnswer = null;
                    // Reset selection when quiz resets
                  });
                },
              ),
    );
  }
}
