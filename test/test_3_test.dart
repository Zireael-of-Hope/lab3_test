import 'package:test_3/hangman.dart';
import 'package:test_3/interaction.dart';
import 'package:test_3/test_3.dart';
import 'package:test/test.dart';
import 'package:test_3/words_db.dart';

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
    test('get topic word', () {
      Interaction inetraction = Interaction();
      String word = inetraction.getWordFromTopic(Topics.towns);
      expect(WordsDB().topics[Topics.towns]!.contains(word), true);
    });
    test('get topics to choose from', () {
      Interaction interaction = Interaction();
      expect(interaction.getTopicsToChoose(), Topics.values.map((topic) => topic.toString().split('.').last).toList());
    });
    test('method to get topic from button press', () {
      Interaction interaction = Interaction();
      expect(interaction.getTopicFromPress(), Topics.towns);
    });
    test('method to get letter from button press', () {
      Interaction interaction = Interaction();
      expect(interaction.getLetterFromPress(), 'a'); //method implementation is changed due to tests
    });
    test('check if letter is right', () {
      Interaction interaction = Interaction();
      interaction.wordToGuessLetters = ['w', 'o', 'r', 'd'];
      expect(interaction.checkLetter('w'), true); //method implementation is changed due to tests
    });
  });

  group('hangman painting tests', () {
    test('hangman levels painting class', () {
      Hangman gallows = Hangman();
      expect(gallows, isNotNull);
    });

    test('hangman painting method', () {
      Hangman gallows = Hangman();
      expect(gallows.paintHangLevel(2), 'level 2');
    });
  });
}
