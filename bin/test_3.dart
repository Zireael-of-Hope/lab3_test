import 'package:test_3/funcs.dart';
import 'package:test_3/hangman.dart';
import 'package:test_3/interaction.dart';
import 'package:test_3/interface.dart';
import 'dart:io';

import 'package:test_3/words_db.dart';

void main() {
  Interface interface = Interface();
  Interaction interaction = Interaction();
  WordsDB wordsDB = WordsDB();
  late bool isStillGoing;
  late bool isWrong;
  int? chosenTopic;

  do {
    isStillGoing = false;
    print('${interaction.getGameName()}\n');
    stdout.write(interface.topicMenu(interaction.getTopicsToChoose()));
    interaction.setTopicFromPress();

    interaction.setWordToGuess(interaction.chosenTopic);
    interaction.setLives(8);
    do {
      

    } while (interaction.lives != 0);
  } while(isStillGoing);
}
 