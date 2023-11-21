abstract class EnglishWordProvider {
  Future<List<String>> englishWord();
  Future<List<String>> alphaNumericWords();
  Future<List<String>> dictionaryWords();
  Future<List<String>> allWords();
}
