import 'package:all_english_words/all_english_words.dart';
import 'package:mockito/annotations.dart';
import 'package:test/test.dart';
import 'all_english_words_test.mocks.dart';

@GenerateNiceMocks([MockSpec<AllEnglishWords>()])
void main() {
  var mockEnglishWord = MockAllEnglishWords();
  group('Group 1: Testing Word Library', () {
    setUp(() {
      // Additional setup goes here.
    });

// Test all Words
    test(
        'Test to get all words both english and alpha-numeric words from the library',
        () async {
      final allWords = mockEnglishWord.allWords;
      expect(allWords, <String>[]);
    });

    test('Test to get alpha-numeric words from library.', () {
      final alphaNumericWords = mockEnglishWord.allAlphaNumericWords;
      expect(alphaNumericWords, <String>[]);
    });

    test('test to get all english words from the word library', () {
      final englishWords = mockEnglishWord.englishWords;
      expect(englishWords, <String>[]);
    });

    test('test to get all dictionary words from the word library', () {
      final dictionaryWords = mockEnglishWord.allDictionaryWords;
      expect(dictionaryWords, <String>[]);
    });
  });
}
