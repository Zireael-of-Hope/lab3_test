import 'package:test_3/words_db.dart';
import 'package:test_3/funcs.dart';
//import 'dart:io';

class Interaction {

  late Topics chosenTopic;
  late String wordToGuess;
  late List<String> wordToGuessLetters;
  late List<String> shownLetters;
  late int lives;
  List<String> usedLetters = [];

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

  Topics setTopicFromPress([bool isTesting = false]) {
    int? chosenNumber;

    do {
      if (isTesting == true) {
        chosenNumber = 0; //for tests
      } else {chosenNumber = getInputNumber();} 

      chosenNumber == null ? chosenNumber = -1 : {}; // add warning here

    } while(chosenNumber > Topics.values.length || chosenNumber < 0);

    chosenTopic = Topics.values[chosenNumber];

    return chosenTopic;
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

  String getLettersToGuess([bool isTesting = false]) {
    if (isTesting) {
      List<String> word = ['w', 'o', 'r', 'd'];
      return word.join(' ');
    } else {return shownLetters.join(' ');}
  }

  List<String> uncoverGuessedLetters(String letter) {
    for (int i = 0; i < wordToGuessLetters.length; i++) {
      if (wordToGuessLetters[i] == letter) {
        shownLetters[i] = letter;
      }
    }
    return shownLetters;
  }

  int setLives(int livesCount) {
    lives = livesCount;
    return lives;
  }

  List<String> setWordToGuess(String newWordToGuess) {
    wordToGuess = newWordToGuess;
    wordToGuessLetters = wordToGuess.split('').toList();

    shownLetters = List.filled(wordToGuessLetters.length, '_');
    shownLetters.first = wordToGuessLetters.first;
    shownLetters.last = wordToGuessLetters.last;

    usedLetters.add(shownLetters.first);
    usedLetters.add(shownLetters.last);

    return [wordToGuess, wordToGuessLetters.join(), shownLetters.join(), usedLetters.join()];
  }
}