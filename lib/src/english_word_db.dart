import 'dart:convert';

import 'package:all_english_words/src/english_words_provider.dart';
import 'dart:io';

class EnglishWordDB implements EnglishWordProvider {
  @override
  Future<List<String>> alphaNumericWords() async {
    final fimeName = 'alphanumeric_words.json';

    final List<String> wordList = [];

    try {
      // Read the JSON file
      String content = await File(fimeName).readAsString();
      final Map<String, dynamic> mapData = jsonDecode(content);

      // Iterate through the keys and add words of the specified length to the wordList
      for (var word in mapData.keys) {
        wordList.add(word);
      }
    } catch (e) {
      print('Error reading file: $e');
      // Return an empty list or handle the error as needed
      return [];
    }

    return wordList;
  }

  @override
  Future<List<String>> dictionaryWords() async {
    final fimeName = 'words_dictionary.json';

    final List<String> wordList = [];

    try {
      // Read the JSON file
      String content = await File(fimeName).readAsString();
      final Map<String, dynamic> mapData = jsonDecode(content);

      // Iterate through the keys and add words of the specified length to the wordList
      for (var word in mapData.keys) {
        wordList.add(word);
      }
    } catch (e) {
      print('Error reading file: $e');
      // Return an empty list or handle the error as needed
      return [];
    }

    return wordList;
  }

  @override
  Future<List<String>> englishWord() async {
    final fimeName = 'english_words.json';

    final List<String> wordList = [];

    try {
      // Read the JSON file
      String content = await File(fimeName).readAsString();
      final Map<String, dynamic> mapData = jsonDecode(content);

      // Iterate through the keys and add words of the specified length to the wordList
      for (var word in mapData.keys) {
        wordList.add(word);
      }
    } catch (e) {
      print('Error reading file: $e');
      // Return an empty list or handle the error as needed
      return [];
    }

    return wordList;
  }

  @override
  Future<List<String>> allWords() async {
    List<String> wordList = [];
    final alphaNumric = await alphaNumericWords();
    final english = await englishWord();
    final dictionary = await dictionaryWords();
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
