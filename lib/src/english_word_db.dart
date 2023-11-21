import 'package:all_english_words/src/english_words_provider.dart';

import 'package:all_english_words/word_db/alphanumeric_words.dart';
import 'package:all_english_words/word_db/english_words.dart';
import 'package:all_english_words/word_db/words_dictionary.dart';

class EnglishWordDB implements EnglishWordProvider {
  @override
  List<String> alphaNumericWords() {
    final List<String> wordList = [];

    final Map<String, dynamic> mapData = alphaNumericWordDb;

    // Iterate through the keys and add words of the specified length to the wordList
    for (var word in mapData.keys) {
      wordList.add(word);
    }

    return wordList;
  }

  @override
  List<String> dictionaryWords() {
    final List<String> wordList = [];

    final Map<String, dynamic> mapData = dictionaryWordDb;

    // Iterate through the keys and add words of the specified length to the wordList
    for (var word in mapData.keys) {
      wordList.add(word);
    }

    return wordList;
  }

  @override
  List<String> englishWord() {
    final List<String> wordList = [];

    final Map<String, dynamic> mapData = englishWordDb;

    // Iterate through the keys and add words of the specified length to the wordList
    for (var word in mapData.keys) {
      wordList.add(word);
    }

    return wordList;
  }

  @override
  List<String> allWords() {
    List<String> wordList = [];
    final alphaNumric = alphaNumericWords();
    final english = englishWord();
    final dictionary = dictionaryWords();
    wordList
      ..addAll(alphaNumric)
      ..addAll(english)
      ..addAll(dictionary);
    wordList.sort();
    final newSetOfWords = wordList.toSet();
    wordList = newSetOfWords.toList();
    return wordList;
  }
}
