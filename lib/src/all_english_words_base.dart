// TODO: Put public facing types in this file.

import 'package:all_english_words/src/english_word_db.dart';

/// Checks if you are awesome. Spoiler: you are.
class AllEnglishWords {
  static final EnglishWordDB _englishWord = EnglishWordDB();
  List<String> get allWords => _englishWord.allWords();
  List<String> get allAlphaNumericWords => _englishWord.alphaNumericWords();
  List<String> get allDictionaryWords => _englishWord.dictionaryWords();
  List<String> get englishWords => _englishWord.englishWord();
}
