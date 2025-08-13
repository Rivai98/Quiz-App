import 'package:flutter/material.dart';
import 'package:quiz_app/models/answer_item_model.dart';

class QuestionItemModel {
  final String title;
  final List<AnswerItemModel> answers;

  QuestionItemModel({required this.title, required this.answers});
}

List<QuestionItemModel> questions = [
  QuestionItemModel(
    title: "What is your favorite sport ?",
    answers: [
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
    ],
  ),
  QuestionItemModel(
    title: "What is your favorite brand ?",

    answers: [
      AnswerItemModel(
        title: "apple",
        onPressed: () => debugPrint("Apple Choice"),
         
      ),
      AnswerItemModel(
        title: "Samsung",
        onPressed: () => debugPrint("Samsung Choice "),
         
      ),
      AnswerItemModel(
        title: "Huawei",
        onPressed: () => debugPrint("Huawei Choice"),
        
      ),
      AnswerItemModel(
        title: "Xiaomi",
        onPressed: () => debugPrint("Xioami Choice"),
        
      ),
    ],
  ),
  QuestionItemModel(
    title: "What is your favorite color ?",
    answers: [
      AnswerItemModel(
        title: "White",
        onPressed: () => debugPrint("White Clicked"),
          
      ),
      AnswerItemModel(
        title: "Black",
        onPressed: () => debugPrint("Black Clicked"),
         
      ),
      AnswerItemModel(
        title: "Blue",
        onPressed: () => debugPrint("Black Clicked"),
          
      ),
      AnswerItemModel(
        title: "Orange",
        onPressed: () => debugPrint("Orange Clicked"),
          
      ),
    ],
  ),
  QuestionItemModel(
    title: "What is your favorite animal ?",
    answers: [
      AnswerItemModel(title: "Cat", onPressed: () => debugPrint("Cat Clicked")),
      AnswerItemModel(title: "Dog", onPressed: () => debugPrint("Dog Clicked"),
        
      ),
      AnswerItemModel(
        title: "Rabbit",
        onPressed: () => debugPrint("Rabbit Clicked"),
          
      ),
      AnswerItemModel(
        title: "Bird",
        onPressed: () => debugPrint("Bird Clicked"),
         
      ),
    ],
  ),
];
