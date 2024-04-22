import 'dart:io';

int? getInputNumber(int from, int upTo) {
  final String? input = stdin.readLineSync();
  if (input != null) {
    final int? chosenNumber = int.tryParse(input);
    if (chosenNumber != null) {
      if (chosenNumber >= from && chosenNumber <= upTo) {
        return chosenNumber;
      }
    } else {
      return null;
    }
  } else {
    return null;
  }
  return null;
}

String? getInputLetter() {
  final String? letter = stdin.readLineSync();
  if (letter != null &&
      letter.length == 1 &&
      letter.contains(RegExp(r'[a-zA-Z0]'))) {
    return letter;
  } else {
    return null;
  }
}
