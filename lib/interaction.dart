import 'package:test_3/funcs.dart';
import 'package:test_3/words_db.dart';
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
    return wordsDB.gameName;
  }

  void clearUnclearable() {
    usedLetters = [];
  }

  List<String> getTopicsToChoose() {
    return Topics.values
        .map((topic) => topic.toString().split('.').last)
        .toList();
  }

  Topics setTopicFromPress([bool isTesting = false]) {
    int? chosenNumber;
    do {
      if (isTesting == true) {
        chosenNumber = 0; //for tests
      } else {
        chosenNumber = getInputNumber(1, Topics.values.length);
      }
      chosenNumber ??= -1; // add warning here
    } while (chosenNumber < 0);
    chosenTopic = Topics.values[chosenNumber - 1];
    return chosenTopic;
  }

  bool isRightPick(String letter) {
    return wordToGuessLetters.contains(letter);
  }

  List<String> addUsedLetter(String letter) {
    usedLetters.add(letter);
    return usedLetters;
  }

  bool isLetterAlreadyUsed(String letter) {
    return usedLetters.contains(letter);
  }

  String getLettersToGuess([bool isTesting = false]) {
    if (isTesting) {
      final List<String> word = ['w', 'o', 'r', 'd'];
      return word.join(' ');
    } else {
      return shownLetters.join(' ');
    }
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

  List<String> setWordToGuess(Topics topic, [bool istesting = false]) {
    if (!istesting) {
      wordToGuess = wordsDB.getRandomWord(topic);
    } else {
      wordToGuess = 'word';
    }

    wordToGuessLetters = wordToGuess.split('').toList();
    wordToGuessLetters =
        wordToGuessLetters.map((e) => e.toLowerCase()).toList();

    shownLetters = List.filled(wordToGuessLetters.length, '_');
    shownLetters.first = wordToGuessLetters.first;
    shownLetters.last = wordToGuessLetters.last;

    for (int i = 0; i < wordToGuessLetters.length; i++) {
      if (wordToGuessLetters[i] == ' ') {
        shownLetters[i] = ' ';
      }
    }

    usedLetters.add(shownLetters.first);
    usedLetters.add(shownLetters.last);

    return [
      wordToGuess,
      wordToGuessLetters.join(),
      shownLetters.join(),
      usedLetters.join()
    ];
  }

  bool isWordGuessed() {
    return !shownLetters.contains('_');
  }
}
