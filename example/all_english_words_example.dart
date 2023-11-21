import 'package:all_english_words/all_english_words.dart';

void main() async {
  var englishWords = AllEnglishWords();

  final allWords = await englishWords.allWords;

  print('Total words in the library are: ${allWords.length}');
}
