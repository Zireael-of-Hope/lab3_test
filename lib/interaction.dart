import 'package:test_3/words_db.dart';
import 'package:test_3/funcs.dart';
import 'dart:io';

class Interaction {

  late String wordToGuess;
  late List<String> wordToGuessLetters;

  WordsDB wordsDB = WordsDB();

  String getGameName() {
    return 'The Hangman Game';
  }

  String getWordFromTopic(Topics topic) {
    return wordsDB.getRandomWord(topic);
  }

  List<String> getTopicsToChoose() {
    return Topics.values.map((topic) => topic.toString().split('.').last).toList(); 
  }

  Topics getTopicFromPress() {
    int? chosenNumber;

    do {
      chosenNumber = /* getInputNumber(); */ 0; //for tests

      chosenNumber == null ? chosenNumber = -1 : {}; // add warning here

    } while(chosenNumber > Topics.values.length || chosenNumber < 0);

    return Topics.values[chosenNumber];
  }

  String getLetterFromPress() {
    String? chosenNumber;

    do {
      chosenNumber = /* getInputLetter(); */ 'a';

      chosenNumber == null ? {} : {}; // add warning here

    } while(chosenNumber == null);

    return chosenNumber;
  }

  bool checkLetter(String letter) {
    return wordToGuessLetters.contains(letter) ? true : false;
  }
}