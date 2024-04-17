import 'dart:io';

int? getInputNumber() {

  String? input = stdin.readLineSync();
  if (input != null) {
    int? chosenNumber = int.tryParse(input);
    return chosenNumber;
  } else {return null;}

} //write a test

String? getInputLetter() {

  String? letter = stdin.readLineSync();

  if (letter != null && letter.length == 1 && letter.contains(RegExp(r'[a-zA-Z]'))) {
    return letter;
  } else {return null;}
} //write a test