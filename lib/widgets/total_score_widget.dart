import 'package:flutter/material.dart';

class TotalScoreWidget extends StatelessWidget {
  final VoidCallback resetOnPressedScore;
  final int totalScore;
  const TotalScoreWidget({
    super.key,
    required this.totalScore,
    required this.resetOnPressedScore,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Congratulation!", style: TextStyle(fontSize: 30)),
          Text("Your score is : $totalScore", style: TextStyle(fontSize: 15)),

          ElevatedButton(
            onPressed: resetOnPressedScore,
            child: Text("Reset Quiz"),
          ),
        ],
      ),
    );
  }
}
