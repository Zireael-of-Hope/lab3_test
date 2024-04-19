import 'dart:io';

int? getInputNumber(int from, int upTo) {
  String? input = stdin.readLineSync();
  if (input != null) {
    int? chosenNumber = int.tryParse(input);
    if (chosenNumber != null) {
      if (chosenNumber >= from && chosenNumber <= upTo) {
        return chosenNumber;
      }
    } else {return null;}
  } else {return null;}
}

String? getInputLetter() {
  String? letter = stdin.readLineSync();
  if (letter != null && letter.length == 1 && letter.contains(RegExp(r'[a-zA-Z]'))) {
    return letter;
  } else {return null;}
}

