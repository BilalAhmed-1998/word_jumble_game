import 'dart:async';

import '../../../exports/index.dart';
import 'dart:math';

class GamePlayScreenController extends GetxController {
  final englishWords = [
    'cat', 'dog', 'bird', 'fish', 'rose', 'blue', 'tree', 'moon', 'sun', 'car',
    'book', 'song', 'rain', 'frog', 'lamp', 'star', 'pink', 'gold', 'jump',
    'play',
    // Add more words as needed
  ];

  RxInt counter = 15.obs;
  RxInt hintsLeft = 5.obs;
  RxInt extraTimeCount = 5.obs;
  late Timer timer;
  @override
  void onInit() {
    super.onInit();
    startTimer();
  }

  void onPressExtraTime() {
    if (extraTimeCount.value > 0) {
      extraTimeCount.value--;
      counter.value += 5;
    }
  }

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (counter.value > 0) {
        counter.value--;
      } else {
        // Counter has reached 0, you can handle this case as needed
        stopTimer();
        Get.toNamed(AppRoutes.GAME_OVER_SCREEN);

      }
    });
  }

  void stopTimer() {
    timer.cancel();
  }

  @override
  void onClose() {
    stopTimer(); // Stop the timer when the controller is closed
    super.onClose();
  }

  void onPressPrintGrid() {
    final crosswordGenerator = CrosswordGenerator(englishWords, 5, 5);

    final crossword = crosswordGenerator.generatePuzzle();

    print('Crossword Grid:');
    crossword.grid.forEach((row) => print(row.join(' ')));
    print('Words to Find: ${crossword.words}');
  }

  void showCustomSnackBar() {
    Get.snackbar(
      '',
      '',
      borderColor: const Color(0xff8867E8),
      borderWidth: 2,
      messageText: SizedBox(
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Hint',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
            const Text(
              'Any of several large wildcats (such as the jaguar  or cougar.',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            CustomRoundButton(
              text: 'Continue',
              onPressed: () {
                hintsLeft.value--;
                Get.back();
              },
            )
          ],
        ),
      ),
      backgroundColor: const Color(0xff2F005C),
      colorText: Colors.white,
      snackPosition: SnackPosition.BOTTOM,
      margin: const EdgeInsets.all(10),
      borderRadius: 10,
      duration: null,
      isDismissible: false,
      forwardAnimationCurve: Curves.easeOutBack,
      reverseAnimationCurve: Curves.easeInBack,
      overlayBlur: 0.5,
      overlayColor: Colors.black54,
    );
  }
}

class CrosswordGrid {
  final List<List<String>> grid;
  final List<String> words;

  CrosswordGrid(this.grid, this.words);

  get gridSize => grid.length;
}

class CrosswordGenerator {
  List<String> dictionary; // Your list of dictionary words
  int gridSize; // Size of the grid (e.g., 10x10)
  int numWords; // Number of words to place in the grid

  CrosswordGenerator(this.dictionary, this.gridSize, this.numWords);

  CrosswordGrid generatePuzzle() {
    final grid = List.generate(gridSize, (_) => List.filled(gridSize, ' '));
    final words = <String>[];

    final random = Random();
    int attempts = 0;

    while (words.length < numWords && attempts < 1000) {
      final word = dictionary[random.nextInt(dictionary.length)];
      final direction = randomDirection();
      final position = randomPosition(gridSize, word.length, direction);

      if (position != null) {
        placeWord(grid, word, position, direction);
        words.add(word);
      }

      attempts++;
    }

    if (words.length < numWords) {
      // Handle the case where not all words could be placed within the limit
      print('Unable to place all words in the crossword.');
    }

    // Fill empty spaces with random letters
    for (int i = 0; i < gridSize; i++) {
      for (int j = 0; j < gridSize; j++) {
        if (grid[i][j] == ' ') {
          grid[i][j] = randomLetter();
        }
      }
    }

    return CrosswordGrid(grid, words);
  }

  String randomLetter() {
    // Generate a random letter (e.g., a-z)
    return String.fromCharCode(Random().nextInt(26) + 97);
  }

  String randomDirection() {
    final directions = ['horizontal', 'vertical', 'diagonal'];
    return directions[Random().nextInt(3)];
  }

  List<int>? randomPosition(int gridSize, int wordLength, String direction) {
    final random = Random();
    int row, col;
    int attempts = 0; // Add a counter to limit attempts

    while (attempts < 100) {
      // Limit the number of attempts
      row = random.nextInt(gridSize);
      col = random.nextInt(gridSize);

      if (direction == 'horizontal' && col + wordLength <= gridSize) {
        return [row, col];
      } else if (direction == 'vertical' && row + wordLength <= gridSize) {
        return [row, col];
      } else if (direction == 'diagonal' &&
          row + wordLength <= gridSize &&
          col + wordLength <= gridSize) {
        return [row, col];
      }

      attempts++; // Increment the attempt counter
    }

    return null; // Return null if a valid position can't be found after multiple attempts
  }

  void placeWord(List<List<String>> grid, String word, List<int> position,
      String direction) {
    final row = position[0];
    final col = position[1];

    if (direction == 'horizontal') {
      for (int i = 0; i < word.length; i++) {
        grid[row][col + i] = word[i];
      }
    } else if (direction == 'vertical') {
      for (int i = 0; i < word.length; i++) {
        grid[row + i][col] = word[i];
      }
    } else if (direction == 'diagonal') {
      for (int i = 0; i < word.length; i++) {
        grid[row + i][col + i] = word[i];
      }
    }
  }
}
