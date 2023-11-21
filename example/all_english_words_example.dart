import 'package:all_english_words/all_english_words.dart';

void main() {
  var englishWords = AllEnglishWords();

  final allWords = englishWords.allWords;

  print('Total words in the library are: ${allWords.length}');
}
