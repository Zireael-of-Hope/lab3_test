import 'package:test_3/hangman.dart';
import 'package:test_3/interaction.dart';
import 'package:test/test.dart';
import 'package:test_3/words_db.dart';
import 'package:test_3/interface.dart';

void main() {
  group('words database tests', () {
    test('Words DB class', () {
      WordsDB wordsDB = WordsDB();
      expect(wordsDB, isNotNull);
    });

    test('enum class topics', () {
      expect(Topics.countries, isNotNull);
    });

    test('topics in wordsDB', () {
      WordsDB wordsDB = WordsDB();
      expect(wordsDB.topics, isNotNull);
    });
  });

  group('interactions tests', () {
    test('Interaction class', () {
      Interaction inetraction = Interaction();
      expect(inetraction, isNotNull);
    });

    test('print game name', () {
      Interaction inetraction = Interaction();
      expect(inetraction.getGameName(), 'The Hangman Game');
    });

    test('get topics to choose from', () {
      Interaction interaction = Interaction();
      expect(
          interaction.getTopicsToChoose(),
          Topics.values
              .map((topic) => topic.toString().split('.').last)
              .toList());
    });

    test('get topic from button press', () {
      Interaction interaction = Interaction();
      expect(interaction.setTopicFromPress(true), Topics.towns);
    });

    test('check if letter is right', () {
      Interaction interaction = Interaction();
      interaction.wordToGuessLetters = ['w', 'o', 'r', 'd'];
      expect(interaction.isRightPick('w'), true);
    });

    test('get shown word with hidden letters', () {
      Interaction interaction = Interaction();
      expect(interaction.getLettersToGuess(true), 'w o r d');
    });

    test('uncover guessed letters', () {
      Interaction interaction = Interaction();
      interaction.wordToGuessLetters = ['w', 'o', 'r', 'd'];
      interaction.shownLetters = ['w', '_', '_', 'd'];
      expect(interaction.uncoverGuessedLetters('r'), ['w', '_', 'r', 'd']);
    });

    test('set lives', () {
      Interaction interaction = Interaction();
      expect(interaction.setLives(1), 1);
    });

    test('word to guess setup', () {
      Interaction interaction = Interaction();
      expect(
          interaction.setWordToGuess(Topics.towns, true), ['word', 'word', 'w__d', 'wd']);
    });
  });

  group('hangman painting tests', () {
    test('hangman levels painting class', () {
      Hangman gallows = Hangman();
      expect(gallows, isNotNull);
    });

    test('hangman painting method', () {
      Hangman gallows = Hangman();
      expect(gallows.levels[0], 
    '''                  ###############
                  |             #
                  |             #
                  |             #
                  |             #
                  O             #
                / | \\           #
                  |             #
                 / \\            #
                                #
                                #
          ############################
          #                          #''');
    });
  });

  group('interface', () {
    test('interface class', () {
      Interface interface = Interface();
      expect(interface, isNotNull);
    });

    test('topic choose menu', () {
      Interface interface = Interface();
      expect(interface.topicMenu(['hello', 'world']), isA<String>());
    });

    test('game main interface', () {
      Interface interface = Interface();
      expect(interface.gameMainInterface('', '', ['', '']), isA<String>());
    });
  });
}
