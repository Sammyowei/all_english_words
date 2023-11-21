// TODO: Put public facing types in this file.

import 'package:all_english_words/src/english_word_db.dart';

/// Checks if you are awesome. Spoiler: you are.
class AllEnglishWords {
  static EnglishWordDB _englishWord = EnglishWordDB();
  Future<List<String>> get allWords async => await _englishWord.allWords();
  Future<List<String>> get allAlphaNumericWords async =>
      await _englishWord.alphaNumericWords();
  Future<List<String>> get allDictionaryWords async =>
      _englishWord.dictionaryWords();
  Future<List<String>> get englishWords async => _englishWord.englishWord();
}
