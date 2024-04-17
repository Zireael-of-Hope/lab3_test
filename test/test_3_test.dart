import 'package:dart_application_7/dart_application_7.dart';
import 'package:test/test.dart';

void main() {
  test('Hangman levels painting class', () {
    Hangman gallows = Hangman();
    expect(gallows, isNotNull);
  });

  test('Words DB class', () {
    WordsDB wordsDB = WordsDB();
    expect(wordsDB, isNotNull);
  });

  test('Interaction class', () {
    Interaction inetraction = Interaction();
    expect(inetraction, isNotNull);
  });
}
