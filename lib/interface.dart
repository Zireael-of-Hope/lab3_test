class Interface {
  String topicMenu(List<String> topics) {
    String menu = 'Choose topic';
    for (int i = 0; i < topics.length; i++) {
      menu += '\n${i + 1}. ${topics[i]}';
    }
    menu += '\nType number of the topic and press Enter of the topic...';
    return menu;
  }

  String gameMainInterface(
      String hang, String wordToGuessHidden, List<String> usedLetters,
      [bool isLostOrWin = false]) {
    String mainInterface = 'Hangman (press 0 to end game)';
    mainInterface += '\n$hang';
    mainInterface += '\nword to guess: ${wordToGuessHidden.toUpperCase()}';
    mainInterface += '\nused letters: ${usedLetters.join(' ').toUpperCase()}';
    if (isLostOrWin == false) {
      mainInterface += '\nType letter and press Enter...';
    }
    return mainInterface;
  }
}
