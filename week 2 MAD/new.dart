import 'dart:io';
import 'dart:math';

// Function to generate a random 4-digit number as a String
String generateRandomNumber() {
  var random = Random();
  String number = '';
  for (int i = 0; i < 4; i++) {
    number += random.nextInt(10).toString();
  }
  return number;
}

// Function to check the user's guess and count cows and bulls
List<int> checkGuess(String secretNumber, String userGuess) {
  int cows = 0;
  int bulls = 0;
  for (int i = 0; i < 4; i++) {
    if (userGuess[i] == secretNumber[i]) {
      cows++;
    } else if (secretNumber.contains(userGuess[i])) {
      bulls++;
    }
  }
  return [cows, bulls];
}

void main() {
  String secretNumber = generateRandomNumber();
  int attempts = 0;

  print("Welcome to the Cows and Bulls game!");
  print("Try to guess the 4-digit number.");

  while (true) {
    stdout.write("Enter your guess: ");
    String userGuess = stdin.readLineSync() ?? "";

    if (userGuess.length != 4 ||
        !userGuess
            .split('')
            .every((char) => int.parse(char) >= 0 && int.parse(char) <= 9)) {
      print("Please enter a valid 4-digit number.");
      continue;
    }

    attempts++;
    List<int> result = checkGuess(secretNumber, userGuess);

    if (result[0] == 4) {
      print(
          "Congratulations! You guessed the correct number $secretNumber in $attempts attempts.");
      break;
    } else {
      print("${result[0]} cows, ${result[1]} bulls");
    }
  }
}