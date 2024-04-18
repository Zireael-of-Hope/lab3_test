import 'package:test_3/words_db.dart';
import 'package:test_3/funcs.dart';
import 'dart:io';

class Interaction {

  late String wordToGuess;
  late List<String> wordToGuessLetters;
  late List<String> shownLetters;
  late int lives;

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

  Topics getTopicFromPress([bool isTesting = false]) {
    int? chosenNumber;

    do {
      if (isTesting == true) {
        chosenNumber = 0; //for tests
      } else {chosenNumber = getInputNumber();} 

      chosenNumber == null ? chosenNumber = -1 : {}; // add warning here

    } while(chosenNumber > Topics.values.length || chosenNumber < 0);

    return Topics.values[chosenNumber];
  }

  String getLetterFromPress([bool isTesting = false]) {
    String? chosenNumber;

    do {
      if (isTesting == true) {
        chosenNumber = 'a';
      } else {chosenNumber = getInputLetter();}
      
      chosenNumber == null ? {} : {}; // add warning here

    } while(chosenNumber == null);

    return chosenNumber;
  }

  bool checkLetter(String letter) {
    return wordToGuessLetters.contains(letter) ? true : false;
  }

  List<String> wordIntoGuessList(String wordToGuess) {
    return wordToGuess.split('').toList();
  }

  String getLettersToGuess([bool isTesting = false]) {
    if (isTesting) {
      List<String> word = ['w', 'o', 'r', 'd'];
      return word.join(' ');
    } else {return shownLetters.map((e) => e = '$e ').toString();}
  }

  List<String> uncoverGuessedLetters(String letter) {
    for (int i = 0; i < wordToGuessLetters.length; i++) {
      if (wordToGuessLetters[i] == letter) {
        shownLetters[i] = letter;
      }
    }
    return shownLetters;
  }
}