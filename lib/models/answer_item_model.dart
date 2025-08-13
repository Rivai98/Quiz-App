import 'package:flutter/material.dart';

class AnswerItemModel {
  final String title;
  final VoidCallback onPressed;

  AnswerItemModel({required this.title, required this.onPressed, });
}

List<AnswerItemModel> answerQuestions = [
  AnswerItemModel(
    title: "Football",
    onPressed: () => debugPrint("Football Clicked"),
   
  ),
  AnswerItemModel(
    title: "Volley Ball",
    onPressed: () => debugPrint("Football Clicked"),
    
  ),
  AnswerItemModel(
    title: "BasketBall",
    onPressed: () => debugPrint("Basket Clicked"),
    
  ),
  AnswerItemModel(
    title: "KickBoxing",
    onPressed: () => debugPrint("Kickboxing Clicked"),
     
  ),
];
