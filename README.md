<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->


# All English Words

The **All English Words** package is a Dart library designed to provide developers working on Dart and Flutter projects access to an extensive database containing over 500,000 English words. This package aims to offer a wide array of words suitable for various applications and creative endeavors.

## Installation

To incorporate the **All English Words** package into your Dart or Flutter project, add the following line to your `pubspec.yaml` file:

  ```yaml
   dependencies:
     all_english_words: ^x.x.x # Replace with the latest version
  ```

  ```bash
     dart pub get
  ```
This command will fetch and install the package along with its dependencies into your project.


## Usage
Import the package into your Dart or Flutter file:

```dart
import 'package:all_english_words/all_english_words.dart';

void main() async {
  var englishWords = AllEnglishWords();

  final allWords = await englishWords.allWords;

  print('Total words in the library are: ${allWords}');
}
```

The example demonstrates how to access the library and retrieve all available words. Upon execution, it will print the total count of words in the library.

## Features

### Word Retrieval
The package provides a simple method allWords to asynchronously fetch the entire word collection.

```dart
var englishWords = AllEnglishWords();
final allWords = await englishWords.allWords;

```



### Future Enhancements
Future updates may introduce additional functionalities, such as word filtering by length, categorization, or language variations.

## Contribution
Contributions are welcome! If you have ideas for improvements, bug fixes, or new features, feel free to contribute. Fork the repository, make changes, and submit a pull request.

## Issues
If you encounter any issues or have suggestions, please open an issue in the repository.


## Acknowledgments
Special thanks to contributors and users who have provided valuable feedback and support to improve this package.

