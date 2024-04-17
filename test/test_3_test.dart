import 'package:test_3/hangman.dart';
import 'package:test_3/interaction.dart';
import 'package:test_3/test_3.dart';
import 'package:test/test.dart';
import 'package:test_3/words_db.dart';

void main() {
  test('Hangman levels painting class', () {
    Hangman gallows = Hangman();
    expect(gallows, isNotNull);
  });

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

  test('Interaction class', () {
    Interaction inetraction = Interaction();
    expect(inetraction, isNotNull);
  });
}
