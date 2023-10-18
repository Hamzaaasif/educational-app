import 'package:educational_app/model/quiz_level_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../custom_widget/custom_onboarding_widget.dart';

class TakeQuizScreenController extends GetxController{
  final PageController pageController = PageController(initialPage: 0);
  RxInt activePage = 0.obs;

  List<Widget> listOfPages=[
    const CustomOnBoardingWidget(image: 'assets/images/onboarding1.png', title: "Your level will be determined based on this test", description: "Multiple choice test 8 questions "),
  ];
  
  // List<QuizModel> listOfMcq= [
  //   QuizModel(ques: "What is a correct syntax to output 'Hello World' in Java?",
  //       opt1: "print ('Hello World');",
  //       opt2: "echo('Hello World');",
  //       opt3: "Console.WriteLine('Hello World');",
  //       opt4: "System.out.printin('Hello World');",
  //       rightAns: "System.out.printin('Hello World');"),
  //
  //   QuizModel(ques: "What is serialization and deserialization in Java?",
  //       opt1: "It is a method for encrypting data.",
  //       opt2: "It is a way to speed up code execution.",
  //       opt3: "It is a form of database querying.",
  //       opt4: "It is the process of converting objects into a byte stream and back",
  //       rightAns: "System.out.printin('Hello World');"),
  //
  //   QuizModel(ques: "What is a Java interface?",
  //       opt1: "A class that can be instantiated",
  //       opt2: "A class with only static methods.",
  //       opt3: "A blueprint for a class with abstract methods.",
  //       opt4: "A class with private methods.",
  //       rightAns: "System.out.printin('Hello World');"),
  //
  //   QuizModel(ques: "Which loop is used when you want to execute a block of code at least once in Java?",
  //       opt1: "for loop",
  //       opt2: "while loop",
  //       opt3: "do-while loop",
  //       opt4: "if-else loop",
  //       rightAns: "System.out.printin('Hello World');"),
  //
  //   QuizModel(ques: "What is the result of 5 + 3 * 2 in Java?",
  //       opt1: "16",
  //       opt2: "11",
  //       opt3: "13",
  //       opt4: "10",
  //       rightAns: "System.out.printin('Hello World');"),
  //
  //   QuizModel(ques: "What is a constructor in Java?",
  //       opt1: "A method with no parameters.",
  //       opt2: "A method that returns a value.",
  //       opt3: "A method used to destroy objects.",
  //       opt4: "A special method called when an object is created",
  //       rightAns: "System.out.printin('Hello World');"),
  //
  //   QuizModel(ques: "Which of the following is NOT a core interface in the Java Collections Framework?",
  //       opt1: "List",
  //       opt2: "Set",
  //       opt3: "Map",
  //       opt4: "Array",
  //       rightAns: "System.out.printin('Hello World');"),
  //
  //   QuizModel(ques: " What are Java annotations used for?",
  //       opt1: "To provide comments in the code.",
  //       opt2: "To indicate deprecated code",
  //       opt3: " To add metadata to code elements.",
  //       opt4: "To create visual effects in GUI applications.",
  //       rightAns: "System.out.printin('Hello World');"),
  // ];
}