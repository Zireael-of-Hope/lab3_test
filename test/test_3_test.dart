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
      expect(inetraction.printGameName(), 'Hangman');
    });
    test('get topic word', () {
      Interaction inetraction = Interaction();
      expect(inetraction.getWordFromTopic(Topics.towns), isA<String>());
    });
    test('print topics to choose from', () {
      Interaction interaction = Interaction();
      expect(interaction.printTopicsToChoose(), isA<String>());
    });
    test('method to get topic from button press', () {
      Interaction interaction = Interaction();
      expect(interaction.getTopicFromPress(), isA<Topics>());
    });
    test('method to get letter from button press', () {
      Interaction interaction = Interaction();
      expect(interaction.getLetterFromPress(), isA<Topics>());
    });
    test('check if letter is right', () {
      Interaction interaction = Interaction();
      expect(interaction.checkLetter(), isA<bool>());
    })
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
