import 'dart:io';
import 'package:test_3/funcs.dart';
import 'package:test_3/hangman.dart';
import 'package:test_3/interaction.dart';
import 'package:test_3/interface.dart';

void main() {
  final Hangman hangman = Hangman();
  final Interface interface = Interface();
  final Interaction interaction = Interaction();
  String? inputLeter;
  late bool isStillGoing;
  late bool isWrong;
  bool endGameNow = false;

  do {
    interaction.clearUnclearable();
    isStillGoing = false;
    endGameNow = false;
    print('${interaction.getGameName()}\n');
    stdout.write(interface.topicMenu(interaction.getTopicsToChoose()));
    interaction.setTopicFromPress();

    interaction.setWordToGuess(interaction.chosenTopic);
    interaction.setLives(hangman.levels.length - 1);
    do {
      print(interface.gameMainInterface(hangman.levels[interaction.lives],
          interaction.getLettersToGuess(), interaction.usedLetters));

      do {
        inputLeter = getInputLetter();
        inputLeter == null ? isWrong = true : isWrong = false;
      } while (isWrong);

      if (inputLeter == '0') {
        endGameNow = true;
        break;
      }

      if (interaction.isRightPick(inputLeter!.toLowerCase())) {
        interaction.uncoverGuessedLetters(inputLeter);
        if (!interaction.isLetterAlreadyUsed(inputLeter)) {
          interaction.addUsedLetter(inputLeter);
        }
      } else {
        if (!interaction.isLetterAlreadyUsed(inputLeter)) {
          interaction.addUsedLetter(inputLeter);
          interaction.setLives(interaction.lives - 1);
        } else {
          interaction.setLives(interaction.lives - 1);
        }
      }
    } while (interaction.lives != 0 &&
        !interaction.isWordGuessed() &&
        endGameNow != true);

    print(interface.gameMainInterface(hangman.levels[interaction.lives],
        interaction.getLettersToGuess(), interaction.usedLetters, true));
    if (interaction.lives == 0) {
      print('your buddy just died');
    } else {
      print('your buddy will live');
    }
    print('\nWould you like to try his luck again?');
    stdout.write('Type Y to play again or N to finish the game...');
    do {
      isWrong = true;
      inputLeter = getInputLetter();
      if (inputLeter != null) {
        if (inputLeter.toLowerCase() == 'y') {
          isStillGoing = true;
          isWrong = false;
        }
        if (inputLeter.toLowerCase() == 'n') {
          isStillGoing = false;
          isWrong = false;
        }
      } else {
        isWrong = true;
      }
    } while (isWrong);
  } while (isStillGoing);
}
