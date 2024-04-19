import 'package:test_3/interaction.dart';

class Interface {
  String printGameName(String gameName) {
    return gameName;
  }

  String topicMenu(List<String> topics) {
    String menu = 'Choose topic';
    for (int i = 0; i < topics.length; i++) {
      menu += '\n${i + 1}. ${topics[i]}';
    }
    menu += '\nType number of the topic and press Enter of the topic...';
    return menu;
  }
}
