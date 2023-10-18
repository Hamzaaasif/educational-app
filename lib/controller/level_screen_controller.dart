import 'package:educational_app/model/level_options_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../model/quiz_level_model.dart';

class LevelScreenController extends GetxController{
  final PageController pageController = PageController(initialPage: 0);
  RxInt activePage = 0.obs;
  RxList<OptionsModel> selectedOption = <OptionsModel>[].obs;

  List<QuizModel> listOfMcq= [
    QuizModel(ques: "What is a correct syntax to output 'Hello World' in Java?",
        listOfOptions: [
         OptionsModel("1",  "print ('Hello World');",),
         OptionsModel("1",  "echo('Hello World');"),
         OptionsModel("1",  "Console.WriteLine('Hello World');",),
         OptionsModel("1",   "System.out.printin('Hello World');",),
        ],
        rightAns: "System.out.printin('Hello World');"),

    QuizModel(ques: "What is serialization and deserialization in Java?",
        listOfOptions: [
          OptionsModel("2",  "It is a method for encrypting data.",),
          OptionsModel("2",  "It is a way to speed up code execution.",),
          OptionsModel("2",  "It is a form of database querying.",),
          OptionsModel("2",  "It is the process of converting objects into a byte stream and back",),
        ],
        rightAns: "System.out.printin('Hello World');"),

    QuizModel(ques: "What is a Java interface?",
        listOfOptions: [
          OptionsModel("3",  "A class that can be instantiated",),
          OptionsModel("3",  "A class with only static methods.",),
          OptionsModel("3",  "A blueprint for a class with abstract methods.",),
          OptionsModel("3",  "A class with private methods.",),
        ],
        rightAns: "System.out.printin('Hello World');"),

    QuizModel(ques: "Which loop is used when you want to execute a block of code at least once in Java?",
        listOfOptions: [
          OptionsModel("4",  "for loop",),
          OptionsModel("4",  "while loop",),
          OptionsModel("4",  "do-while loop",),
          OptionsModel("4",  "if-else loop",),
        ],
        rightAns: "System.out.printin('Hello World');"),

    QuizModel(ques: "What is the result of 5 + 3 * 2 in Java?",
        listOfOptions: [
          OptionsModel("5",  "16",),
          OptionsModel("5",  "11",),
          OptionsModel("5",  "13",),
          OptionsModel("5",  "10",),
        ],
        rightAns: "System.out.printin('Hello World');"),

    QuizModel(ques: "What is a constructor in Java?",
        listOfOptions: [
          OptionsModel("6",   "A method with no parameters.",),
          OptionsModel("6",  "A method that returns a value.",),
          OptionsModel("6",  "A method used to destroy objects.",),
          OptionsModel("6",  "A special method called when an object is created",),
        ],
        rightAns: "System.out.printin('Hello World');"),

    QuizModel(ques: "Which of the following is NOT a core interface in the Java Collections Framework?",
        listOfOptions: [
          OptionsModel("7",   "List"),
          OptionsModel("7",   "Set",),
          OptionsModel("7",   "Map",),
          OptionsModel("7",   "Array",),
        ],
        rightAns: "System.out.printin('Hello World');"),

    QuizModel(ques: " What are Java annotations used for?",
        listOfOptions: [
          OptionsModel("8",   "To provide comments in the code.",),
          OptionsModel("8",   "To indicate deprecated code",),
          OptionsModel("8",   " To add metadata to code elements.",),
          OptionsModel("8",   "To create visual effects in GUI applications.",),
        ],
        rightAns: "System.out.printin('Hello World');"),
  ];

}